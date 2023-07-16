'''
Author: ltt
Date: 2022-11-07 17:05:01
LastEditors: ltt
LastEditTime: 2022-11-14 19:15:22
FilePath: InstrGenerator.py
'''

import modules.Global as Global
import modules.Decode as Decode
import random

def construct(name, *argv):
    ret = {}
    ret["type"] = "instr"
    ret["name"] = name
    instr_class = Global.INSTRUCTION_DICT[name]["class"]
    ret["class"] = instr_class
    mips = Global.CLASSIFY[instr_class]["mips"]
    i = 0
    for str in mips:
        if(str in (", ", "(", ")")):
            ret[str] = str
        else:
            ret[str] = argv[i]
            i += 1
    return ret

def calc_instr(name, used_reg):
    ret = {}
    ret["type"] = "instr"
    ret["name"] = name
    instr_class = Global.INSTRUCTION_DICT[name]["class"]
    ret["class"] = instr_class
    mips = Global.CLASSIFY[instr_class]["mips"]
    for str in mips:
        if(str in ("rs", "rt", "rd")):
            ret[str] = random.choice(used_reg)
        elif str in ("immediate"):
            ret[str] = random.randint(Global.CLASSIFY[instr_class]["immediate"][0] ,
                                      Global.CLASSIFY[instr_class]["immediate"][1])
        else:
            ret[str] = str
    return [ret]

def mem_instr(name, used_reg):
    ret = []
    rt = random.choice(used_reg)
    base = random.choice(used_reg)
    ret.append(construct("ori", base, 0, 0))
    for i in range(random.randint(0,2)):
        ret.append(construct("nop"))
    if(name in ("lw", "sw")):
        ret.append(construct(name, rt, random.randrange(0,100,4), base))
    if(name in ("lh", "lhu", "sh")):
        ret.append(construct(name, rt, random.randrange(0,100,2), base))
    if(name in ("lb", "sb")):
        ret.append(construct(name, rt, random.randrange(0,100,1), base))
    return ret

def md_instr(name, used_reg):
    ret = []
    rs = random.choice(used_reg)
    rt = random.choice(used_reg)
    ret.append(construct(name, rs, rt))
    return ret

def jump_instr(name, used_reg, label):
    ret = []
    if(name in Global.CLASSIFY["br_r1"]["include"]):
        ret.append(construct(name, random.choice(used_reg), label))
    if(name in Global.CLASSIFY["br_r2"]["include"]):
        ret.append(construct(name, random.choice(used_reg), 
                             random.choice(used_reg), label))
    if(name in ("jal", "j")):
        ret.append(construct(name, label))
    
    
def rand_instr(instr_class):
    return random.choice(Global.CLASSIFY[instr_class]["enbled"])

def rand_assign(uninit_reg, word_aligned=False):
    """对所给寄存器随机赋值"""
    ret = []
    for x in uninit_reg:
        ret.append(construct("lui", x, random.randint(0,0xffff)))
    return ret
    
def to_str(src, prefix='', suffix='\n'):
    """输出指令"""
    if(src["type"] == "label"): return src["label"]+':'+suffix
    else:
        ret = [prefix ,src["name"]," "]
        mips = Global.CLASSIFY[src["class"]]["mips"]
        for x in mips:
            if x in ("rs","rt","rd"): 
                ret.append("$%-2d" % src[x])
            elif x in ("base"):
                ret.append("$%d" % src[x])
            elif x in ("offset","immediate"):
                ret.append("%d" % src[x])
            else:
                ret.append(src[x])
        ret.append(suffix)
        return ''.join(ret)


if __name__ == "__main__":
    pass