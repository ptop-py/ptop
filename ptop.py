import os,sys,psutil,socket,subprocess,platform
from datetime import *
from time import *
def default():
    start=time()
    opers=sys.platform
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
    if opers=="win32":
        Data = subprocess.check_output(['wmic', 'process', 'list','brief'])
        a = str(Data)
        try:
            for i in range(len(a)):
                print(a.split("\\r\\r\\n")[i])
        except IndexError as e:
            end=time()
            print("Executed In :",str(end-start),"s")
            sleep(5)
        else:
            exec("error.vbs")
    if opers=="linux":
        out = os.popen("top").read
        print(out)
    if opers=="darwin":
        out = os.popen("top").read
        print(out)
