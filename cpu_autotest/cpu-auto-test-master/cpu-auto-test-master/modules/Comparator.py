'''
Author: ltt
Date: 2022-10-26 20:22:43
LastEditors: ltt
LastEditTime: 2022-11-14 17:35:49
FilePath: Comparator.py
'''
import json

import modules.Global as Global
import modules.Base as Base


def Logisim():
    """比对 Logisim"""
    result_path = Global.RESULT_PATH
    with open(result_path, "w") as fp:
        def print_wrong():
            print(f"wrong instruction is found on line {i+1}")
            print(
                f"we got:\n {json.dumps(out, sort_keys=False, indent=4, separators=(',', ': '))}")
            print(
                f"we expected:\n {json.dumps(std, sort_keys=False, indent=4, separators=(',', ': '))}")
            fp.write(f"wrong instruction is found on line {i+1}\n")
            fp.write(
                f"we got:\n {json.dumps(out, sort_keys=False, indent=4, separators=(',', ': '))}\n")
            fp.write(
                f"we expected:\n {json.dumps(std, sort_keys=False, indent=4, separators=(',', ': '))}\n")
            return
        std_path = Global.STD_PATH
        out_path = Global.OUT_PATH
        with open(std_path) as std_file:
            with open(out_path) as out_file:
                stds = json.load(std_file)
                outs = json.load(out_file)
                for i in range(len(stds)):
                    std, out = stds[i], outs[i]
                    print("checking %s:%s" % (std["instr"], std["asm"]))
                    if (std["code"] != out["code"]):
                        print_wrong()
                        return
                    if (std["code"] == '0'*32):
                        if (out["MemWrite"]):
                            print_wrong()
                            return
                        if (out["RegWrite"] and out["RegAddr"] != "0x00000000"):
                            print_wrong()
                            return
                        continue
                    if (std["RegWrite"] != out["RegWrite"]):
                        print_wrong()
                        return
                    if (std["MemWrite"] != out["MemWrite"]):
                        print_wrong()
                        return
                    if (std["RegWrite"]):
                        if (std["RegAddr"] != out["RegAddr"] or std["RegData"] != out["RegData"]):
                            print_wrong()
                            return
                    if (std["MemWrite"]):
                        if (std["MemAddr"] != out["MemAddr"] or std["MemData"] != out["MemData"]):
                            print_wrong()
                            return
        print("Accepted")
        fp.write("Accepted\n")


def Verilog():
    """比对 Verilog"""
    result_path = Global.RESULT_PATH
    with open(result_path, "w") as fp:
        def print_wrong():
            print(f"wrong instruction is found on instr {i+1}")
            print(
                f"we got:\n {json.dumps(out, sort_keys=False, indent=4, separators=(',', ': '))}")
            print(
                f"we expected:\n {json.dumps(std, sort_keys=False, indent=4, separators=(',', ': '))}")
            fp.write(f"wrong instruction is found on instr {i+1}\n")
            fp.write(
                f"we got:\n {json.dumps(out, sort_keys=False, indent=4, separators=(',', ': '))}\n")
            fp.write(
                f"we expected:\n {json.dumps(std, sort_keys=False, indent=4, separators=(',', ': '))}\n")
            raise Base.CompareError
        std_path = Global.STD_PATH
        out_path = Global.OUT_PATH
        with open(std_path) as std_file:
            with open(out_path) as out_file:
                stds = json.load(std_file)
                outs = json.load(out_file)
                j = 0
                for i in range(len(stds)):
                    try:
                        std, out = stds[i], outs[j]
                    except IndexError:
                        print("The output is less than std")
                        fp.write("The output is less than std")
                        raise Base.CompareError
                    if (std["RegWrite"] == False and std["MemWrite"] == False):
                        continue
                    j += 1
                    print("checking %s: %s" % (std["instr"], std["asm"]))
                    if (std["pc"] != out["pc"]):
                        print_wrong()
                        return
                    if (std["RegWrite"] != out["RegWrite"]):
                        print_wrong()
                        return
                    if (std["MemWrite"] != out["MemWrite"]):
                        print_wrong()
                        return
                    if (std["RegWrite"]):
                        if (std["RegAddr"] != out["RegAddr"] or std["RegData"] != out["RegData"]):
                            print_wrong()
                            return
                    if (std["MemWrite"]):
                        if (std["MemAddr"] != out["MemAddr"] or std["MemData"] != out["MemData"]):
                            print_wrong()
                            return
        print("Accepted")
        fp.write("Accepted\n")

        return 0
