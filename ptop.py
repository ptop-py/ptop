import os,psutil,socket,subprocess,platform
from datetime import *
from time import *

host_name=socket.gethostname()
host_ip=socket.gethostbyname(host_name)
last=open("lastlogin.txt","r")
lastlogin=last.readlines()
last.close
last_login=str(lastlogin)
file=open("lastlogin.txt","w")
date=str(datetime.now())
file.write(date)
file.close()
print("\nLastlogin:",last_login)
print("CPU:",psutil.cpu_percent(),"%")
print("RAM:",psutil.cpu_percent(),"%")
print('Used', psutil.virtual_memory()[2],"% of C:\\")
print("Hostname:",socket.gethostname())
print("Internet Protocol:",host_ip)
print("Username:",os.getlogin())
print("OS Build:",platform.platform(),"\n")

Data = subprocess.check_output(['wmic', 'process', 'list', 'brief'])
a = str(Data)
try:
    for i in range(len(a)):
        print(a.split("\\r\\r\\n")[i])
except IndexError as e:
    print("Task Completed Successfully")
    sleep(5)
