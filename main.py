from ptop import *
from ptopa import *
from os import *
from colorama import *

system("cls")
parent_pid = os.getppid()
if psutil.Process(parent_pid).name() == "pwsh.exe" or "pwsh" or "powershell.exe" or "powershell":
    prompt="PS C:\\Windows\\System32>"
else:
    prompt="C:\\Windows\\System32>"
print("""
Welcome to Ptop.py  v2.1.1
Type ".help" for more information.
""")
while True:
    command=str(input(prompt))
    if command==".help":
        print("""
        ptop            <-ʭ-> Default Mode
        ptop -a         <-ʭ-> Print Extra Boot time and Ascii Art
        ptop .exit      <-ʭ-> Default Mode And Exit
        ptop -a .exit   <-ʭ-> Print Extra Boot time and Ascii Art And Exit
        .help           <-ʭ-> Print this help message
        .exit           <-ʭ-> Exit the REPL
        """)
    elif command==".exit":
        break
    elif command=="ptop":
        default()
    elif command=="ptop .exit":
        default()
        break
    elif command=="ptop -a":
        modea()
    elif command=="ptop -a .exit":
        modea()
        break
    else:
        print(command," : The term '",command,"' is not recognized as the name of a cmdlet, function, script file, or operable program. Check the\nspelling of the name, or if a path was included, verify that the path is correct and try again.")