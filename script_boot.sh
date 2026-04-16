cd calculadora/ #relative route
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/calculadora #absolute route
ls -lai #l=list, a=all, i=inode
ls -l -a -i #the same options but in a separately
stat . #shows like the ID of the directory
#File: .
#Size: 4096            Blocks: 8          IO Block: 4096   directory
#Device: 7,4     Inode: 1310995     Links: 2
#Access: (0777/drwxrwxrwx)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
#Access: 2026-04-16 15:59:13.102531427 +0000
#Modify: 2026-04-16 15:59:13.101531427 +0000
#Change: 2026-04-16 15:59:13.101531427 +0000
#Birth: 2026-04-16 15:59:13.101531427 +0000

cd #Change directory to home directory from any location of my OS
cd /home/codespace #Change directory to home directory using absolute route
# cd ~ #Change directory to home directory using ~ shortcut
cd $HOME #Change directory to home directory using enviroment variable
pwd #Where am I
whoami #Who am I
ls -lt #When each file was modified
man ls #ls command manual
ls /dev | head -5 #Show only the first 5 files or devices in the folder
ls /etc | tail -5 #Display only the last 5 configuration files in the folder