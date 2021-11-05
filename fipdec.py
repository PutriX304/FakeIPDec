import os

os.system('cls' if os.name == 'nt' else 'clear')
print("Fake IP Deobfuscator")
print("====================")
print("           By: PhynX\n")
file = str(input("File Name: "))
print("\nResult 1 (#): ")
for line in open(file):
    li=line.strip()
    if not li.startswith("#"):
        if "growtopia" in li:
            print(line.rstrip())
print("\nResult 2 (//): ")
for line in open(file):
    li=line.strip()
    if not li.startswith("#") and not li.startswith("//"):
        if "growtopia" in li:
            print(line.rstrip())
tl = open(file, "r").readlines()
print("\nTotal Line: "+str(len(tl)))
print("==================================")
