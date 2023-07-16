'''
Author: ltt
Date: 2022-11-07 11:14:05
LastEditors: ltt
LastEditTime: 2022-11-14 19:09:38
FilePath: DataMaker.py
'''

import modules.InstrGenerator as IG
import modules.Global as Global
import random

# def rand

def add_nop(source):
    """在每条指令间添加 nop 以测试单条指令正确性"""
    ret = []
    for s in source:
        if(s["type"] == "label"):
            ret.append(s)
        else:
            ret.append(IG.construct_instr("nop"))
            ret.append(IG.construct_instr("nop"))
            ret.append(IG.construct_instr("nop"))
            ret.append(IG.construct_instr("nop"))
            ret.append(IG.construct_instr("nop"))
            ret.append(s)
    return ret

def generate_group(id, name="case", num = 10):
    ret = []
    label = f"{name}_{id}_"
    begin_label =  label+"begin"
    end_label = label+"end"
    used_reg = list(range(1,31))
    random.shuffle(used_reg)
    used_reg = sorted(used_reg[0:3]+[0,31])
    Global.label_num = 0
    
    ret.append({"type" : "label", "label" : begin_label})
    
    ret += IG.rand_assign(used_reg)
    used_reg.sort()
    for _ in range(num):
        ret += generate_case(label, used_reg, True, True, True)
    ret.append(IG.construct("lui",1,0))
    ret.append({"type" : "label", "label" : end_label})
    return ret
    
def generate_case(label, used_reg, MEM, MD, Jump):
    ret = []
    calc = len(Global.CALC_CLASS)
    mem  = (len(Global.MEM_CLASS) if MEM else 0) + calc
    md   = (len(Global.MD_CLASS) if MD else 0) + mem
    jump = (len(Global.JUMP_CLASS) if Jump else 0) + md
    op = random.randint(1, jump)
    if(op <= calc):
        instr_class = random.choice(Global.CALC_CLASS)
        ret += IG.calc_instr(IG.rand_instr(instr_class), used_reg)
    elif(op <= mem):
        instr_class = random.choice(Global.MEM_CLASS)
        ret += IG.mem_instr(IG.rand_instr(instr_class), used_reg)
    elif(op <= md):
        instr_class = random.choice(Global.MD_CLASS)
        ret += IG.md_instr(IG.rand_instr(instr_class), used_reg)
        generate_case(label, used_reg, MEM, False, Jump)
        # generate_case(label, used_reg, MEM, False, Jump)
        generate_case(label, used_reg, MEM, False, Jump)
        ret.append(IG.construct(IG.rand_instr("mv_fr"), random.choice(used_reg)))
    elif(op <= jump):
        instr_class = random.choice(Global.JUMP_CLASS)
        name = IG.rand_instr(instr_class)
        Global.label_num += 1
        now = label + f"{Global.label_num}"
        used_reg_31 = used_reg.copy()
        used_reg_31.remove(31)
        if(name in Global.CLASSIFY["br_r1"]["include"]):
            ret.append(IG.construct(name, random.choice(used_reg), now))
            ret += generate_case(label, used_reg, False, False, False)
            ret += generate_case(label, used_reg, MEM, MD, False)
            ret.append({"type" : "label", "label" : now})
        elif(name in Global.CLASSIFY["br_r2"]["include"]):
            ret.append(IG.construct(name, random.choice(used_reg), 
                                random.choice(used_reg), now))
            ret += generate_case(label, used_reg, False, False, False)
            ret += generate_case(label, used_reg, MEM, MD, False)
            ret.append({"type" : "label", "label" : now})
        elif(name in ("j")):
            ret.append(IG.construct("j", now))
            ret += generate_case(label, used_reg, False, False, False)
            ret += generate_case(label, used_reg, MEM, MD, False)
            ret.append({"type" : "label", "label" : now})
        elif(name in ("jal")):
            Global.label_num += 1
            nex = label + f"{Global.label_num}"
            ret.append(IG.construct("jal", now))
            ret += generate_case(label, used_reg_31, False, False, False)
            ret += generate_case(label, used_reg, MEM, MD, False)
            ret.append(IG.construct("jal", nex))
            ret += generate_case(label, used_reg, False, False, False)
            ret += generate_case(label, used_reg, MEM, MD, False)
            ret.append({"type" : "label", "label" : now})
            ret += generate_case(label, used_reg_31, MEM, MD, False)
            ret += generate_case(label, used_reg_31, MEM, MD, False)
            ret.append(IG.construct("jr", 31))
            ret += generate_case(label, used_reg, MEM, MD, False)
            ret.append({"type" : "label", "label" : nex})
        elif(name in ("jalr")):
            Global.label_num = Global.label_num + 1
            nex = label + f"{Global.label_num}"
            used_reg_rd = used_reg.copy()
            rd = random.choice(used_reg_rd[1:])
            used_reg_rd.remove(rd)
            ret.append(IG.construct("jal", now))
            ret += generate_case(label, used_reg_31, False, False, False)
            ret += generate_case(label,  used_reg_rd, MEM, MD, False)
            ret += generate_case(label,  used_reg_rd, MEM, MD, False)
            ret.append(IG.construct("jr", rd))
            ret += generate_case(label, used_reg, False, False, False)
            ret.append({"type" : "label", "label" : now})
            ret += generate_case(label, used_reg_31, MEM, MD, False)
            ret += generate_case(label, used_reg_31, MEM, MD, False)
            ret.append(IG.construct("jalr", rd, 31))
            ret += generate_case(label,  used_reg_rd, False, False, False)
    return ret

    