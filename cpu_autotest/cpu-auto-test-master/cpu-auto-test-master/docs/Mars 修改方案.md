# Mars 修改方案

## 1. 优化最大仿真步数参数的输入为 `n<number>`

- `venus/MarsLaunch.java`

	- `private boolean parseCommandArgs(String[] args)` 方法

		```java
		// Check for stand-alone integer, which is the max execution steps option
		if (args[i].toLowerCase().indexOf("n")==0) {
		    String s = args[i].substring(1);					   
		    try {
		        maxSteps = Integer.decode(s).intValue(); // if we got here, it has to be OK 
		        continue;
		    }             
		    catch (NumberFormatException nfe) {
		    }
		    continue;
		}
		```

## 2. 增加输出 PC 寄存器的功能

- `mips\hardware\RegisterFile.java`

	- `public static Register getUserRegister(String Rname)` 方法

		```java
		if(Rname.compareTo("$pc") == 0){
		    reg = programCounter;
		}
		```

## 3. 添加命令行参数 `std` 以输出标准输出

- `venus/Globals.java`

	- ```java
		public static boolean outPutStd = false;
		```

- `venus/MarsLaunch.java`

	- `private boolean parseCommandArgs(String[] args)` 方法

		```java
		// 输出 std 信息
		if (args[i].toLowerCase().equals("std")) { 
		    Globals.outPutStd = true;
		    continue;
		}
		```

- `simulator\Simulator.java`

	- `synchronized (Globals.memoryAndRegistersLock)` 同步块中

		输出 pc 值，机器码，汇编码

		```java
		if(GLOBAL.outPutStd){
		    System.out.print("\npc: "+Binary.intToHexString(pc));
		    System.out.print("instr: "+Binary.intToHexString(statement.getBinaryStatement()));
		}
		instruction.getSimulationCode().simulate(statement); // 原有语句
		if(Globals.outPutStd)
		    System.out.print(" asm:"+statement.getPrintableBasicAssemblyStatement()+" ");
		```

- `mips\hardware\RegisterFile.java`

	- `public static int updateRegister(int num, int val)` 方法

		更改寄存器时输出值

		```java
		if(Globals.outPutStd)
			System.out.print(String.format("$%2d <= %08x", num, val));
		```

- `mips\hardware\Memory.java`

	- `public int set(int address, int value, int length)` 方法

		内存改变时输出值

		```java
		if(Globals.outPutStd) System.out.print(String.format("*0x%08x <= %08x", address>>2<<2, value));
		```

## 4. 使用 `ignore` 参数忽略溢出和字对齐

- `mars\Globals.java`

	- 添加 `ignore` 全局变量，以忽略溢出和字对齐

		```java
		public static boolean ignore = false;
		```
	
- `venus/MarsLaunch.java`

	- `private boolean parseCommandArgs(String[] args)` 方法

- `mars\mips\instructions\InstructionSet.java`

	- 判断溢出的部分
- 判断字对齐的部分

## 5. 寄存器初值默认为 0

- `D:\LTT\repository\cscore\CPU\CPU_Auto_Test\Mars\mars\mips\hardware\RegisterFile.java`

	- `private static Register [] regFile` 

		修改 `$gp` 和 `$sp` 指针默认初值为 0

		```java
		new Register("$gp", GLOBAL_POINTER_REGISTER, 0),
		         	// new Register("$gp", GLOBAL_POINTER_REGISTER, Memory.globalPointer),
		         	new Register("$sp", STACK_POINTER_REGISTER, 0),
		         	// new Register("$sp", STACK_POINTER_REGISTER, Memory.stackPointer),
		```

		
