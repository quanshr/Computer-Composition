# 利用 python 对 Logisim/Verilog 中搭建的 CPU 进行自动化测试

- 主目录下有一个样例文件夹 `example`，其中的两个 `bat` 分别用于测试 `.circ` 和 `.v` 文件
- 选择 python 原因：~~不想写 JAVA~~
- 一人役
- 改动 Mars 后 jar 包太大提交不了，故提交的压缩包中只有项目的 README.md 和 Mars 修改方案.md
- 有一个共享测试数据的想法，但还没实现
- [项目地址](https://gitee.com/LTT-Repository/cpu-auto-test) 

[toc]

## 0. 测试方案

### 测试过程

1. 初始化

   - 处理命令行参数
   - 指定指令测试
3. Mars 编译指令为机器码并得到标准输出
4. 导入 Logisim/Verilog 并测试
5. 比对输出数据和标准输出数据

### 环境

- python
  - 版本：`python3` 版本大于等于 3.6
  - 依赖的模块：`sys`、`getopt`、`json` 、`subprocess`、`re`、`hashlib`、`os`
- Mars\Mars.jar 魔改过命令行输入
  - 使用 `n<number>` 指定最大仿真步数
  - 输入 `$pc` 以获取 `pc` 的值
  - 输入 `std` 可以打印每条指令的执行信息
  - 忽略 `add` 和 `sub` 溢出
  - 寄存器堆中所有寄存器初值都为 `0` 
  - 修改内容见 [Mars 修改方案](docs/Mars 修改方案.md)
- Logisim.jar
  - 没有改动
- Verilog 环境
  - 支持 `iverilog` 
- Windows 10
  - 系统默认 shell：`cmd`

### 注意事项

- 使用 `-f` 或 `--filename` 指定测试用的 .asm 文件，使用 `--test` 指定测试文件(.circ, .v)

- 测试 Logisim 时不会改动源文件，会复制一份到 `output\test.circ` 中再修改该文件的 ROM 以进行测试

- 测试 Verilog 时需要使用 `iverilog` 进行仿真

- 测试 Verilog 时只需使用 `--test` 指定顶层模块如 `mips.v` 然后在 `mips.v` 中 include 其他文件，可以在文件中中使用宏定义避免来回修改文件，比如在 `mips.v` 的开头添加

	```verilog
	`ifdef IVERILOG
	`include "control/Controller.v"
	`include "datapath/DM.v"
	`include "datapath/GRF.v"
	`include "datapath/IM.v"
	`include "datapath/MUX.v"
	`include "datapath/ALU.v"
	`include "datapath/Extend.v"
	`endif 
	```

	使用 `--argv` 增加传递给 Verilog 编译器的参数比如 `--argv "-D IVERILOG"`

- 测试 Verilog 时会覆盖 `mips.v` 同级目录下的 `code.txt` 文件

​	

## 1. 初始化

### 读取命令行参数

- 命令行参数列表

  |          参数          |       值       |    默认值    |                     作用                     |
  | :--------------------: | :-------------: | :-----------: | :------------------------------------------: |
  |     `-h,--help`     |      None      |     False     |              展示所有参数并退出              |
  |   `-f,--filename`   |    FILE_PATH    |     None     |  使用指定文件中的指令测试，不指定则随机生成  |
  |    `-n,--number`    |    INSTR_NUM    |      32      |              指定生成的指令个数              |
  | `-m,--max-execution` | EXECUTION_TIME |      100      |               指令最多执行次数               |
  |         `-b`         |      None      |     False     |         利用原 std 文件直接比对数据         |
  |      `--force`      |      None      |     False     |     强制重新生成 std 文件，优先于 `-b`     |
  | `--debug` | False | True | 输出调试信息 |
  |    `--output-dir`    |   OUTPUT_DIR   |    output/    |                输出所在文件夹                |
  |       `--asm`       |    ASM_NAME    |    asm.asm    |                指令保存文件名                |
  |       `--code`       |    CODE_NAME    |   code.txt   |               机器码保存文件名               |
  |      `--result`      |   RESULT_NAME   |  result.txt  |                 输出比对结果                 |
  |       `--test`       |    TEST_PATH    |     None     |          测试文件路径(*.circ, *.v)          |
  |     `--compiler`     |  COMPILER_TYPE  |   iverilog   |          编译器(iverilog, vcs, ies)          |
  |       `--argv`       |  COMPILER_ARGV  |     None     |              传递给编译器的参数              |
  |       `--std`       |    STD_NAME    |   std.json   |                 标准输出结果                 |
  |       `--out`       |    OUT_NAME    |   out.json   |               测试程序输出结果               |
  |       `--mars`       |    MARS_PATH    | Mars\Mars.jar |                  Mars 路径                  |
  |     `--logisim`     |  LOGISIM_PATH  |  logisim.jar  |                 Logisim 路径                 |
  |   `--delay-enbled`   |   DELAY_ENBLED   |     false     |               是否启用延迟槽               |
  | `--default-setting` | DEFAULT_SETTING | setting.json | 如果指定将使用文件中的配置并忽略其他所有参数 |


  - 默认参数在 `setting.json` 中修改
  - ` --filename` 仅可指定 `.asm` 文件
  - 根据测试文件后缀名进行测试
- `setting.json` 参数列表

  - 同上
  - ```json
      "INSTRUCTION_LIST" : [...]
      ```

### 根据 `FILE_PATH` 有无判断是否生成指令

- `FILE_PATH` 有值则跳过 [2. 指令生成](##2. 指令生成)

## 2. 指令生成

pass

## 3.1 Logisim 机器码及 STD 生成

- 当两次输入文件一致时或指定了 `-b` 时会跳过，除非指定了 `--force`
- 调用 `Mars` 从 `ASM_NAME` 文件生成机器码保存至 `CODE_NAME` 中，并同时生成标准输出文件 `STD_NAME`

### 3.1.1 生成机器码

- 生成数据段从 0 开始的机器码

  ```bash
  java -jar Mars\Mars.jar me nc mc CompactDataAtZero dump .text HexText {DATA_PATH} {ASM_PATH}
  ```
- 生成代码段从 0 开始的机器码

  ```bash
  java -jar Mars\Mars.jar me nc mc CompactTextAtZero dump .text HexText {TEXT_PATH} {ASM_PATH}
  ```
- 根据不同指令合并得到所需机器码

### 3.1.2 生成标准输出

- 通过增加传递给 Mars 的参数 `std` 格式化输出文件后得到 std
- 对于每个指令形成如下字典

  ```json
  {
      "instr": "",
      "code": "",
      "asm": "",
      "RegWrite": true,
      "RegAddr": "",
      "RegData": "",
      "MemWrite": false,
      "MemAddr": "",
      "MemData": ""
  },
  ```
  
  最终得到 std 文件

## 3.2 Verilog 机器码及 STD 生成

- 当两次输入文件一致时或指定了 `-b` 时会跳过，除非指定了 `--force`
- 调用 `Mars` 从 `ASM_NAME` 文件生成机器码保存至 `CODE_NAME` 中，并同时生成标准输出文件 `STD_NAME`

### 3.2.1 生成机器码

- 生成数据段从 0 开始的机器码

  ```bash
  java -jar Mars\Mars.jar me nc mc CompactDataAtZero dump .text HexText {DATA_PATH} {ASM_PATH}
  ```
- 直接得到所需机器码

### 3.2.2 生成标准输出

- 通过增加传递给 Mars 的参数 `std` 格式化输出文件后得到 std
- 对于每个指令形成如下字典

	```json
	{
	    "instr": "",
	    "code": "",
	    "asm": "",
	    "RegWrite": true,
	    "RegAddr": "",
	    "RegData": "",
	    "MemWrite": false,
	    "MemAddr": "",
	    "MemData": ""
	},
	```

	最终得到 std 文件

## 4.1 导入 Logisim 测试

- `TEST_PATH` 所指定的文件后缀为 .circ
- Logisim 测试文件在 Logisim 文件夹中
- 使用命令行输出 `out` 文件

## 4.2 导入 Verilog 测试

- `TEST_PATH` 所指定的文件后缀为 .v
- 将 `testbranch.v` 文件与输入的顶层模块一起编译，仿真后得到输出
- 根据输出格式化得到 `out` 文件

## 5.1 Logisim 比对输出

- 对 `code`、`RegWrite`、`RegAddr`、`RegData`、`MemWrite`、`Memaddr`、`MemData` 按 `code` 值不同分情况比对
- 在第一个错误处退出程序并打印 `std` 和 `out` 中对应数据
- 全部相同输出 `Accepted`

## 5.2 Verilog 比对输出

- 对 `pc`、`RegAddr`、`RegData`、`MemAddr`、`MemData` 分情况比对
- 在第一个错误处退出程序并打印 `std` 和 `out` 中对应数据
- 全部相同输出 `Accepted`

## 6 Bug

- 还没完全测试过
- 没有实现汇编代码自动生成，只支持用现有的汇编文件测试
- ~~由于有时候 Mars 在出错时返回值是 0 可能导致程序继续进行而不终止~~

## 7 Update

`2022-11-9`

- 为分别测试 P5 P6，将 `--delay-enbled` 参数改为 `-p n` 的形式，用于指定测试形式
- Mars 添加 `ignore` 参数以忽略溢出和字对齐

### `2022-11-6`

- 增加对流水线 CPU 的对拍功能，使用 `--delay-enbled` 参数
- Mars 寄存器初值全为 0
- Mars 编译错误时会结束程序

### `2022-10-30`

- 进一步魔改 Mars，现在用命令行运行 Mars 时添加 `std` 参数可以输出每条指令执行时的信息，用于生成 std
- 由于生成 std 所需的时间大幅减少，去掉了 MD5 比对
- 重构了 std 生成函数
- 现在会将比对结果同时在 `result.txt` 以及控制台输出
- 在 `Mars/` 目录下添加 Mars 的改动记录文件 `Mars 修改方案.md` 
- 增加 `--debug` 参数

### `2022-10-28`

- Verilog 比对时无视 `$ 0` 的写入数据

### `2022-10-27`

- 重建仓库
- 添加了 `example` 样例文件夹

### `2022-10-26`

- 重构了工程结构
- 支持测试 Verilog，但只支持使用 `iverilog` 编译

### `2022-10-24`

- 修改了向 ROM 数据时的 bug
- 因为多次调用 `Mars` 使得生成 std 文件速度巨慢，现在当输入文件一致时不会重新生成 std 文件，除非指定 `--force` 选项

### `2022-10-23`

- 完成整个框架的搭建，可以实现 Logisim 的测试
