
import os, subprocess

def main():
    subprocess.run("java -jar Mars.jar a mc LargeText dump .text HexText text.txt mips1.asm")
    subprocess.run("java -jar Mars.jar a mc LargeText dump 0x4180-0x6ffc HexText ktext.txt mips1.asm")
    with open("text.txt", "r") as fp:
        texts = fp.readlines()
    with open("ktext.txt", "r") as fp:
        ktexts = fp.readlines()
    codes = ["00000000\n" for _ in range((0x1180>>2) + len(ktexts))]
    for text, i in zip(texts, range((0x4180 - 0x3000)>>2)):
        codes[i] = text
    for ktext, i in zip(ktexts, range((0x1180>>2), (0x1180>>2) + len(ktexts))):
        codes[i] = ktext
    with open("./code.txt","w") as fp:
        fp.write(''.join(codes))
if __name__ == "__main__":
    main()
