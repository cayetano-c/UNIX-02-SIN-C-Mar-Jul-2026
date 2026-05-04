cd calculadora/ # With this command we change directory to calculadora/ (relative route)
pwd # With this command shows our directory route
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/calculadora # With this command we change directory using absolute route
cd .. # For change to our principal route
mkdir proyecto # To create a new directory
cd proyecto # Change directory to proyecto
ls -lai # Shows visible files
ls -Flai # Shows a list of our current file
cd .. 
ls # Shows files in current directory
cd calculadora 
ls -lai # Shows all files in calculadora/ directory even if they are hidden
ls -l -a -i # Shows the same as ls -lai but in a long way
stat . # Show more details about current directory
#File: .
#Size: 4096            Blocks: 8          IO Block: 4096   directory
#Device: 7,4     Inode: 1310995     Links: 2
#Access: (0777/drwxrwxrwx)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
#Access: 2026-04-16 15:59:13.102531427 +0000
#Modify: 2026-04-16 15:59:13.101531427 +0000
#Change: 2026-04-16 15:59:13.101531427 +0000
#Birth: 2026-04-16 15:59:13.101531427 +0000
cd # Change directory to home
pwd # Shows current directory path
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/proyecto/ # Change directory using absolute path
cd $HOME # Change directory to home using environment variable
$BASH # Opens a new bash shell
whoami # Shows our current user
sudo su # Switch to superuser
whoami # Shows current user (now root)
ls -lt # Shows files ordered by modification time
man ls # Shows the manual of ls command
ls /dev | head -7 # Shows the first 7 files in /dev
ls /etc # List of configuration files
ls /etc | tail -5 # Shows the last 5 files in /etc
ls -al # Shows detailed list including hidden files
