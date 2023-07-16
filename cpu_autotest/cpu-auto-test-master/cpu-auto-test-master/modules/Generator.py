'''
Author: ltt
Date: 2022-10-26 20:19:34
LastEditors: ltt
LastEditTime: 2022-11-14 19:28:24
FilePath: Generator.py
'''
import re, json, os
from functools import cmp_to_key

import modules.Base as Base
import modules.Global as Global
import modules.Decode as Decode


def generate_instruction():
    """生成指令"""
    pass

def generate_code_Logisim():
    """生成 Logisim 机器码和标准输出"""
    """生成机器码"""
    asm, mars = Global.ASM_PATH, Global.MARS_PATH
    code_path = Global.CODE_PATH
    debug = Global.DEBUG
    data, text = "temp/data.txt", "temp/text.txt"
    if(debug): print("generating code (Logisim)")
    Base.run(["java", "-jar", mars,"ae1", "me", "nc", "mc",
             "CompactDataAtZero", "dump", ".text", "HexText", data, asm])
    Base.run(["java", "-jar", mars,"ae1", "me", "nc", "mc",
             "CompactTextAtZero", "dump", ".text", "HexText", text, asm])
    with open(data, "r") as DataAtZeroFile:
        DataAtZero = DataAtZeroFile.readlines()
    with open(text, "r") as TextAtZeroFile:
        TextAtZero = TextAtZeroFile.readlines()
    codes = Decode.merge(DataAtZero, TextAtZero,
                         Global.INSTRUCTION_LIST)
    with open(code_path, "w") as code_file:
        code_file.write("v2.0 raw\n")
        code_file.writelines(codes)  # 合并后机器码储存在 code_path 对应文件中
    if(debug): print("generating code finish (Logisim)")
    """生成标准输出"""
    std_path = Global.STD_PATH
    codes += ["00000000"]
    std = []
    if(debug): print("generating std (Logisim)")
    ret = Base.run(["java","-jar",mars,"me","nc","std","mc","CompactDataAtZero",asm]).split('\n')
    
    for str in ret:
        ans = {}
        if(str[0:2] != "pc"): continue
        # 获取 pc 及指令
        pc = ans["pc"] = "0x"+str[6:14]
        instr = ans["instr"] = str[24:32]
        ans["asm"] = re.search("asm:[^\r^\n]*",str).group()[5:]
        if(debug): print(f"generating {str}")
        
        # 根据指令获取输出
        attr,code = Global.INSTRUCTION_DICT.get(ans["asm"].split(' ')[0]),Decode.toBin(instr)
        if(attr == None):
            raise RuntimeError("指令集中没有该指令:"+ans["asm"])
        ans["code"] = code
        if (attr["RegWrite"] == True):
            ans["RegWrite"] = True
            ans["RegAddr"] = "0x%08x" % int(str[34:36])
            ans["RegData"] = "0x"+str[40:48]
        else:
            ans["RegWrite"] = False   
        if (attr["MemWrite"] == True):
            ans["MemWrite"] = True
            ans["MemAddr"] = "0x%08x" % (int(str[34:44], 16)>>2)
            ans["MemData"] = "0x"+str[48:56]
        else:
            ans["MemWrite"] = False
        std.append(ans)

    with open(std_path, "w") as std_file:
        std_file.write(json.dumps(std, sort_keys=False, indent=4, separators=(',', ': ')))
    if(debug): print("generating std finish (Logisim)")
    return
def generate_out_Logisim():
    """获取 Logisim 输出文件"""
    debug = Global.DEBUG
    test_path, test_circ = Global.TEST_PATH, Global.TEST_CIRC
    logisim = Global.LOGISIM_PATH
    code_path, out_path = Global.CODE_PATH, Global.OUT_PATH
    if(debug): print("generating out (Logisim)")
    Base.run(["copy", test_path, test_circ])
    with open(test_circ, "r+") as fp:
        with open(code_path, "r") as code_file:
            code_str = code_file.readlines()[1:]
            circ_str = fp.read()
            rom_str = re.search(Global.ROM, circ_str)
            if (rom_str == None):
                print("无 ROM 组件")
                raise RuntimeError
            # print(rom_str.group())
            rom_str = re.sub(r"\n([0-9a-zA-Z ]*\n*)*</a>",
                             f"\n{' '.join(code_str)}</a>", rom_str.group())
            # print(rom_str)
            circ_str = re.sub(Global.ROM, rom_str, circ_str)
            fp.seek(0, 0)
            fp.truncate()
            fp.write(circ_str)

    ret = Base.run(["java", "-jar", logisim, "Logisim/auto_test.circ",
                   "-tty", "table", "-sub", "Logisim/CPU.circ", test_circ])

    ret = ret.replace(' ', '').replace('\t', '').split('\n')
    out = []
    for s in ret:
        if (len(s) < 108):
            break
        ans = {}
        ans["code"] = s[0:32]
        ans["RegWrite"] = True if s[32] == '1' else False
        ans["RegAddr"] = "0x%08x" % int(s[33:38], 2)
        ans["RegData"] = "0x%08x" % int(s[38:70], 2)
        ans["MemWrite"] = True if s[70] == '1' else False
        ans["MemAddr"] = "0x%08x" % int(s[71:76], 2)
        ans["MemData"] = "0x%08x" % int(s[76:108], 2)
        out.append(ans)
    with open(out_path, "w") as out_file:
        out_file.write(json.dumps(out, sort_keys=False,
                       indent=4, separators=(',', ': ')))
    if(debug): print("generating out finish (Logisim)")
    return
def Logisim():
    """测试 Logisim"""
    skip = Global.SKIP
    if (skip == False):
        if (Global.FILE_PATH == ""):
            generate_instruction()
        else:
            Base.run(["copy", Global.FILE_PATH, Global.ASM_PATH])
            generate_code_Logisim()
    generate_out_Logisim()


def generate_code_P4():
    """生成单周期机器码和标准输出"""
    """生成机器码"""
    asm, mars = Global.ASM_PATH, Global.MARS_PATH
    code_path = Global.CODE_PATH
    debug = Global.DEBUG
    if(debug): print("generating code (P4)")
    Base.run(["java", "-jar", mars,"ignore","ae1", "me", "nc", "mc", "CompactDataAtZero", "dump", ".text", "HexText", code_path, asm])
    with open(code_path, "r") as code_file:
        codes = code_file.readlines()
    if(debug): print("generating code finish(P4)")
    """生成标准输出"""
    std_path = Global.STD_PATH
    codes += ["00000000"]
    std = []
    if(debug): print("generating std (P4)")
    ret = Base.run(["java","-jar",mars,"ignore","ae1","me","nc","std","mc","CompactDataAtZero",asm]).split('\n')
    for str in ret:
        ans = {}
        if(str[0:2] != "pc"): continue
        # 获取 pc 及指令
        pc = ans["pc"] = "0x"+str[6:14]
        instr = ans["instr"] = str[24:32]
        ans["asm"] = re.search("asm:[^\r^\n]*",str).group()[5:]
        if(debug): print(f"generating {str}")
        
        # 根据指令获取输出
        attr,code = Global.INSTRUCTION_DICT.get(ans["asm"].split(' ')[0]),Decode.toBin(instr)
        if(attr == None):
            raise RuntimeError("指令集中没有该指令:"+ans["asm"])
        ans["code"] = code
        if (attr["RegWrite"] == True):
            ans["RegWrite"] = True
            ans["RegAddr"] = str[34:36]
            ans["RegData"] = "0x"+str[40:48]
            if(ans["RegAddr"] == " 0"): continue # 过滤 $0 寄存器
        else:
            ans["RegWrite"] = False   
        if (attr["MemWrite"] == True):
            ans["MemWrite"] = True
            ans["MemAddr"] = str[34:44]
            ans["MemData"] = "0x"+str[48:56]
        else:
            ans["MemWrite"] = False
    
        # if (attr["RegWrite"] or attr["MemWrite"]):
        std.append(ans)
    with open(std_path, "w") as std_file:
        std_file.write(json.dumps(std, sort_keys=False, indent=4, separators=(',', ': ')))
    if(debug): print("generating code finish (P4)")    
    return
def generate_out_P4():
    """获取P4 CPU 输出文件"""
    debug = Global.DEBUG
    compiler,argv = Global.COMPILER_TYPE,Global.COMPILER_ARGV
    test_path,out_path = Global.TEST_PATH,Global.OUT_PATH
    code_path = os.path.join(f"{os.getcwd()}", Global.CODE_PATH)
    temp = os.path.join(os.getcwd(), "temp", "out")
    test_branch = os.path.join(os.getcwd(), "Verilog", "P4.v")
    if(debug): print("generating out (P4)")
    if(compiler == "iverilog"):
        (test_path, test_name) = os.path.split(test_path)
        Base.run(["cd",test_path,"&&","copy",code_path,"code.txt"])
        ret = Base.run(["cd",test_path,
                        "&&","iverilog",argv,"-o",temp,test_name,test_branch, 
                        "&&", "vvp", temp], errdesc="编译错误")
        match = re.findall(r"@.*\n",ret)
        # print(match)
        out = []
        for s in match:
            ans = {}
            ans["pc"] = "0x"+s[1:9]
            if(re.search(r"@.{10}\$.{14}[\r\n]+", s) != None):
                ans["RegWrite"] = True
                ans["MemWrite"] = False
                ans["RegAddr"] = s[12:14]
                ans["RegData"] = "0x"+s[-10:-2]
                if(ans["RegAddr"] == " 0"): continue # 过滤 $0 寄存器
            else:
                ans["MemWrite"] = True
                ans["RegWrite"] = False
                ans["MemAddr"] = "0x"+s[12:20]
                ans["MemData"] = "0x"+s[-10:-2]
            out.append(ans)
        
    else:
        pass
    with open(out_path,"w") as out_file:
        out_file.write(json.dumps(out, sort_keys=False,
                        indent=4, separators=(',', ': ')))
    if(debug): print("generating out finish (P4)")
    return
def P4():
    """测试单周期CPU"""
    skip = Global.SKIP
    if (skip == False):
        if (Global.FILE_PATH == ""):
            generate_instruction()
        else:
            Base.run(["copy", Global.FILE_PATH, Global.ASM_PATH])
            generate_code_P4()
    generate_out_P4()
            
def comp(a, b):
    """排序函数"""
    if(int(a["time"]) < int(b["time"])): return -1
    if(int(a["time"]) > int(b["time"])): return 1
    if(a["RegWrite"]): return -1
    if(b["RegWrite"]): return 1
    return 0       
def generate_code_P5():
    """生成 P5 机器码和标准输出"""
    """生成机器码"""
    asm, mars = Global.ASM_PATH, Global.MARS_PATH
    code_path = Global.CODE_PATH
    debug = Global.DEBUG
    if(debug): print("generating code (P5)")
    Base.run(["java", "-jar", mars,"ignore","ae1","db", "me", "nc", "mc", "CompactDataAtZero", "dump", ".text", "HexText", code_path, asm])
    with open(code_path, "r") as code_file:
        codes = code_file.readlines()
    if(debug): print("generating code finish(P5)")
    """生成标准输出"""
    std_path = Global.STD_PATH
    codes += ["00000000"]
    std = []
    if(debug): print("generating std (P5)")
    ret = Base.run(["java","-jar",mars,"ignore","ae1","db","me","nc","std","mc","CompactDataAtZero",asm]).split('\n')
    for str in ret:
        ans = {}
        if(str[0:2] != "pc"): continue
        # 获取 pc 及指令
        pc = ans["pc"] = "0x"+str[6:14]
        instr = ans["instr"] = str[24:32]
        ans["asm"] = re.search(r"asm:[^\r^\n]*",str).group()[5:]
        if(debug): print(f"generating {str}")
        
        # 根据指令获取输出
        attr,code = Global.INSTRUCTION_DICT.get(ans["asm"].split(' ')[0]),Decode.toBin(instr)
        if(attr == None):
            raise RuntimeError("指令集中没有该指令:"+ans["asm"])
        ans["code"] = code
        if(code == "0"*32): continue
        if (attr["RegWrite"] == True):
            ans["RegWrite"] = True
            ans["RegAddr"] = str[34:36]
            ans["RegData"] = "0x"+str[40:48]
            if(ans["RegAddr"] == " 0"): continue # 过滤 $0 寄存器
        else:
            ans["RegWrite"] = False   
        if (attr["MemWrite"] == True):
            ans["MemWrite"] = True
            ans["MemAddr"] = str[34:44]
            ans["MemData"] = "0x"+str[48:56]
        else:
            ans["MemWrite"] = False
    
        # if (attr["RegWrite"] or attr["MemWrite"]):
        std.append(ans)
    with open(std_path, "w") as std_file:
        std_file.write(json.dumps(std, sort_keys=False, indent=4, separators=(',', ': ')))
    if(debug): print("generating code finish (P5)")    
    return
def generate_out_P5():
    """获取P5 CPU 输出文件"""
    debug = Global.DEBUG
    compiler,argv = Global.COMPILER_TYPE,Global.COMPILER_ARGV
    test_path,out_path = Global.TEST_PATH,Global.OUT_PATH
    code_path = os.path.join(f"{os.getcwd()}", Global.CODE_PATH)
    temp = os.path.join(os.getcwd(), "temp", "out")
    test_branch = os.path.join(os.getcwd(), "Verilog", "P5.v")
    if(debug): print("generating out (P5)")
    if(compiler == "iverilog"):
        (test_path, test_name) = os.path.split(test_path)
        Base.run(["cd",test_path,"&&","copy",code_path,"code.txt"])
        ret = Base.run(["cd",test_path,
                        "&&","iverilog",argv,"-o",temp,test_name,test_branch, 
                        "&&", "vvp", temp], errdesc="编译错误")
        match = re.findall(r"[0-9]*@.*\n",ret)
        # print(match)
        out = []
        for s in match:
            ans = {}
            ans["time"] = re.search(r"[0-9]*@", s).group()[:-1]
            if(re.search(r"@.{10}\$.{14}[\r\n]+", s) != None):
                s = re.search(r"@.{10}\$.{14}[\r\n]+", s).group()
                ans["pc"] = "0x"+s[1:9]
                ans["RegWrite"] = True
                ans["MemWrite"] = False
                ans["RegAddr"] = s[12:14]
                ans["RegData"] = "0x"+s[-10:-2]
                if(ans["RegAddr"] == " 0"): continue # 过滤 $0 寄存器
            else:
                s = re.search(r"@.{10}\*.{20}[\r\n]+", s).group()
                ans["pc"] = "0x"+s[1:9]
                ans["MemWrite"] = True
                ans["RegWrite"] = False
                ans["MemAddr"] = "0x"+s[12:20]
                ans["MemData"] = "0x"+s[-10:-2]
            out.append(ans)
    else:
        pass
    out.sort(key=cmp_to_key(comp))
    with open(out_path,"w") as out_file:
            out_file.write(json.dumps(out, sort_keys=False,
                           indent=4, separators=(',', ': ')))
    if(debug): print("generating out finish (P5)")
    return        
def P5():
    """测试P5 CPU"""
    skip = Global.SKIP
    if (skip == False):
        if (Global.FILE_PATH == ""):
            generate_instruction()
        else:
            Base.run(["copy", Global.FILE_PATH, Global.ASM_PATH])
            generate_code_P5()
    generate_out_P5()
    pass


def generate_code_P6():
    """生成 P6 机器码和标准输出"""
    """生成机器码"""
    asm, mars = Global.ASM_PATH, Global.MARS_PATH
    code_path = Global.CODE_PATH
    debug = Global.DEBUG
    if(debug): print("generating code (P6)")
    Base.run(["java", "-jar", mars,"ignore","ae1","db", "me", "nc", "mc", "CompactDataAtZero", "dump", ".text", "HexText", code_path, asm])
    with open(code_path, "r") as code_file:
        codes = code_file.readlines()
    if(debug): print("generating code finish(P6)")
    """生成标准输出"""
    std_path = Global.STD_PATH
    codes += ["00000000"]
    std = []
    if(debug): print("generating std (P6)")
    ret = Base.run(["java","-jar",mars,"ignore","ae1","db","me","nc","std","mc","CompactDataAtZero",asm]).split('\n')
    for str in ret:
        ans = {}
        if(str[0:2] != "pc"): continue
        # 获取 pc 及指令
        pc = ans["pc"] = "0x"+str[6:14]
        instr = ans["instr"] = str[24:32]
        ans["asm"] = re.search(r"asm:[^\r^\n]*",str).group()[5:]
        if(debug): print(f"generating {str}")
        
        # 根据指令获取输出
        attr,code = Global.INSTRUCTION_DICT.get(ans["asm"].split(' ')[0]),Decode.toBin(instr)
        if(attr == None):
            raise RuntimeError("指令集中没有该指令:"+ans["asm"])
        ans["code"] = code
        if(code == "0"*32): continue
        if (attr["RegWrite"] == True):
            ans["RegWrite"] = True
            ans["RegAddr"] = str[34:36]
            ans["RegData"] = "0x"+str[40:48]
            if(ans["RegAddr"] == " 0"): continue # 过滤 $0 寄存器
        else:
            ans["RegWrite"] = False   
        if (attr["MemWrite"] == True):
            ans["MemWrite"] = True
            ans["MemAddr"] = str[34:44]
            ans["MemData"] = "0x"+str[48:56]
        else:
            ans["MemWrite"] = False
    
        # if (attr["RegWrite"] or attr["MemWrite"]):
        std.append(ans)
    with open(std_path, "w") as std_file:
        std_file.write(json.dumps(std, sort_keys=False, indent=4, separators=(',', ': ')))
    if(debug): print("generating code finish (P6)")    
    return
    pass

def generate_out_P6():
    """获取 P6 CPU 输出文件"""
    debug = Global.DEBUG
    compiler,argv = Global.COMPILER_TYPE,Global.COMPILER_ARGV
    test_path,out_path = Global.TEST_PATH,Global.OUT_PATH
    code_path = os.path.join(f"{os.getcwd()}", Global.CODE_PATH)
    temp = os.path.join(os.getcwd(), "temp", "out")
    test_branch = os.path.join(os.getcwd(), "Verilog", "P6.v")
    if(debug): print("generating out (P6)")
    if(compiler == "iverilog"):
        (test_path, test_name) = os.path.split(test_path)
        Base.run(["cd",test_path,"&&","copy",code_path,"code.txt"])
        ret = Base.run(["cd",test_path,
                        "&&","iverilog",argv,"-o",temp,test_name,test_branch, 
                        "&&", "vvp", temp], errdesc="编译错误")
        match = re.findall(r"[0-9]*@.*\n",ret)
        # print(match)
        out = []
        for s in match:
            ans = {}
            ans["time"] = re.search(r"[0-9]*@", s).group()[:-1]
            if(re.search(r"@.{10}\$.{14}[\r\n]+", s) != None):
                s = re.search(r"@.{10}\$.{14}[\r\n]+", s).group()
                ans["pc"] = "0x"+s[1:9]
                ans["RegWrite"] = True
                ans["MemWrite"] = False
                ans["RegAddr"] = s[12:14]
                ans["RegData"] = "0x"+s[-10:-2]
                if(ans["RegAddr"] == " 0"): continue # 过滤 $0 寄存器
            else:
                s = re.search(r"@.{10}\*.{20}[\r\n]+", s).group()
                ans["pc"] = "0x"+s[1:9]
                ans["MemWrite"] = True
                ans["RegWrite"] = False
                ans["MemAddr"] = "0x"+s[12:20]
                ans["MemData"] = "0x"+s[-10:-2]
            out.append(ans)
    else:
        pass
    out.sort(key=cmp_to_key(comp))
    with open(out_path,"w") as out_file:
            out_file.write(json.dumps(out, sort_keys=False,
                           indent=4, separators=(',', ': ')))
    if(debug): print("generating out finish (P6)")
    return  
def P6():
    """测试P6 CPU"""
    skip = Global.SKIP
    if (skip == False):
        if (Global.FILE_PATH == ""):
            generate_instruction()
        else:
            Base.run(["copy", Global.FILE_PATH, Global.ASM_PATH])
            generate_code_P6()
    generate_out_P6()
    pass
