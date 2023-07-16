'''
Author: ltt
Date: 2022-10-23 10:45:14
LastEditors: ltt
LastEditTime: 2022-11-14 19:27:54
FilePath: Decode.py
'''

import sys, getopt, json, re, hashlib, os

import modules.Global as Global

def toBin(string):
    """十六进制字符串转二进制"""
    ret = ""
    for c in string:
        if(c == '0'): ret += "0000"
        if(c == '1'): ret += "0001"
        if(c == '2'): ret += "0010"
        if(c == '3'): ret += "0011"
        if(c == '4'): ret += "0100"
        if(c == '5'): ret += "0101"
        if(c == '6'): ret += "0110"
        if(c == '7'): ret += "0111"
        if(c == '8'): ret += "1000"
        if(c == '9'): ret += "1001"
        if(c == 'a'): ret += "1010"
        if(c == 'b'): ret += "1011"
        if(c == 'c'): ret += "1100"
        if(c == 'd'): ret += "1101"
        if(c == 'e'): ret += "1110"
        if(c == 'f'): ret += "1111"
    return ret.strip(' ')

def findInList(instr,instructions):
    """在表中查找特定指令"""
    code = toBin(instr)
    opcode  = code[::-1][26:32][::-1]
    funct   = code[::-1][0:6][::-1]
    for key, value in instructions.items():
        if value["opcode"] == opcode:
            if opcode == "000000":
                if value["funct"] != funct:
                    continue
            if (key == "nop" and code != "0"*32): continue
            return value
    message = f"指令集中找不到对应指令 {instr} {code}"
    raise RuntimeError(message) 

def merge(DataAtZero, TextAtZero, instructions):
    """合并两个机器码文件"""
    n = len(DataAtZero)
    codes = []
    for i in range(n):
        data_str = DataAtZero[i]
        text_str = TextAtZero[i]
        ret = findInList(data_str, instructions)
        codes.append(text_str if ret["jump"] else data_str)
    return codes

def signextend(code):
    """符号扩展"""
    code = code[0]*(32-len(code)) + code
    if(code[0] == '1'):
        return int(code, 2)-(1<<32)
    else:
        return int(code, 2)

def load_setting(setting):
    """加载配置"""
    Global.FILE_PATH = setting["FILE_PATH"]
    Global.TEST_NUM = setting["TEST_NUM"]
    Global.SKIP = (setting["SKIP"] == "true")
    Global.FORCE = (setting["FORCE"] == "true")
    Global.DEBUG = (setting["DEBUG"] == "true")
    Global.OUTPUT_DIR = setting["OUTPUT_DIR"]
    Global.ASM_NAME = setting["ASM_NAME"]
    Global.CODE_NAME  = setting["CODE_NAME"]
    Global.RESULT_NAME  = setting["RESULT_NAME"]
    Global.TEST_PATH  = setting["TEST_PATH"]
    Global.TEST_CIRC  = setting["TEST_CIRC"]
    Global.STD_NAME  = setting["STD_NAME"]
    Global.OUT_NAME  = setting["OUT_NAME"]
    Global.MARS_PATH  = setting["MARS_PATH"]
    Global.LOGISIM_PATH  = setting["LOGISIM_PATH"]
    Global.P  = setting["P"]
    Global.COMPILER_TYPE  = setting["COMPILER_TYPE"]
    Global.COMPILER_ARGV  = setting["COMPILER_ARGV"]
    Global.TEST_TYPE  = setting["TEST_TYPE"]
    Global.CLASSIFY = setting["CLASSIFY"]
    # Global.ENBLED_INSTRUCTION = setting["ENBLED_INSTRUCTION"]
    # Global.INSTRUCTION_DICT  = setting["INSTRUCTION_DICT"]
    # Global = setting[""]
    
def init_argv():
    """读取参数"""
    setting_file_name = "setting.json"
    try:
        opts, args = getopt.gnu_getopt(sys.argv[1:], Global.shortopts, Global.longopts)
    except getopt.GetoptError as err:
        print(err)
        sys.exit(2)
    use_default_setting = True
    for option, value in opts:
        if option in ("--default-setting"):
            setting_file_name = value
            try:
                with open(setting_file_name) as setting_file:
                    setting = json.load(setting_file)
            except:
                print(f"找不到 {setting_file_name}")
                sys.exit(2)
            
            use_default_setting = False
            break
    if(use_default_setting):
        try:
            with open(setting_file_name) as setting_file:
                setting = json.load(setting_file)
        except:
            print(f"找不到 {setting_file_name}")
            sys.exit(2)
    if(args != []):
        print(f"多余参数 {args}")
    load_setting(setting)
    for option, value in opts:
        if option in ("-h","--help"):
            print("没写")
            sys.exit(0)
        if option in ("-f","--filename"):
            Global.FILE_PATH = value
        if option in ("-n","--number"):
            Global.TEST_NUM = value
        if option in ("-b"):
            Global.SKIP = True
        if option == "--force":
            Global.FORCE = True
        if option == "--debug":
            Global.DEBUG = True
        if option in ("--output-dir"):
            Global.OUTPUT_DIR = value
        if option in ("--asm"):
            Global.ASM_NAME = value
        if option in ("--code"):
            Global.ASM_NAME = value
        if option in ("--result"):
            Global.RESULT_NAME = value
        if option in ("--test"):
            Global.TEST_PATH = value
        if option in ("--compilor"):
            Global.COMPILER_TYPE = value
        if option in ("--argv"):
            Global.COMPILER_ARGV = value
        if option in ("--std"):
            Global.STD_NAME = value
        if option in ("--out"):
            Global.OUT_NAME = value
        if option in ("--mars"):
            Global.MARS_PATH = value
        if option in ("--logisim"):
            Global.LOGISIM_PATH = value
        if option in ("-p"):
            Global.P = int(value)
    change_dir()
    Global.ENBLED_INSTRUCTION = setting[f"ENBLED_INSTRUCTION_P{Global.P}"]
    construct_instruction_dict()
    test_path = Global.TEST_PATH
    if(re.search(".circ",test_path) != None):
        Global.TEST_TYPE = "Logisim"
    elif(re.search(".v",test_path) != None):
        Global.TEST_TYPE = "Verilog"
    else:
        pass
    if(Global.FORCE): 
        Global.SKIP = False
    return setting

def get_file_md5(file_path):
    """生成文件 MD5 值"""
    with open(file_path, "r", encoding="utf-8") as fp:
        file_str = fp.read()
        file_md5 = hashlib.md5(file_str.encode("utf-8")).hexdigest()
    return file_md5

def construct_instruction_dict():
    """构造指令字典"""
    for instr in Global.ENBLED_INSTRUCTION:
        Global.INSTRUCTION_DICT[instr] = {}
    for class_name, class_value  in Global.CLASSIFY.items():
        class_value["enbled"] = []
        for instr_name, instr_value in Global.INSTRUCTION_DICT.items():
            if instr_name in class_value["include"]:
                class_value["enbled"].append(instr_name)
                instr_value["class"] = class_name
                instr_value["RegWrite"] = class_value["RegWrite"]
                instr_value["MemWrite"] = class_value["MemWrite"]
                instr_value["jump"] = class_value["jump"]
        if class_value["enbled"] != [] :
            Global.ENBLED_CLASS.append(class_name)
            if(class_name in ("cal_rr", "cal_ri", "mv_to","cal_ru","shift")):
                Global.CALC_CLASS.append(class_name)
            if(class_name in ("load", "store")):
                Global.MEM_CLASS.append(class_name)
            if(class_name in ("br_r1", "br_r2", "jal", "j")):
                Global.JUMP_CLASS.append(class_name)
            if(class_name in ("mul_div")):
                Global.MD_CLASS.append(class_name)
            
def change_dir():
    Global.ASM_PATH = os.path.join(Global.OUTPUT_DIR,Global.ASM_NAME)
    Global.CODE_PATH = os.path.join(Global.OUTPUT_DIR, Global.CODE_NAME)
    Global.RESULT_PATH = os.path.join(f"{Global.OUTPUT_DIR}", Global.RESULT_NAME)
    Global.STD_PATH = os.path.join(Global.OUTPUT_DIR, Global.STD_NAME)
    Global.OUT_PATH = os.path.join(Global.OUTPUT_DIR, Global.OUT_NAME)
    
if __name__ == "__main__":
	print(signextend("1111001100"))