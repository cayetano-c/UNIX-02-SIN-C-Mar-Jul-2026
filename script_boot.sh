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

#DISTRO COMMANDS
sudo apt update # This command is used to update with super user
sudo apt install -y git vim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools qemu-system # With this command we can install all the packages we need to create our distro
git clone --depth 1 https://github.com/torvalds/linux.git # With this command we clone the repo and only the last commit
cd Linux # Change directory to Linux
make menuconfig # Open configuration menu to select kernel options (we select 64-bit kernel)
make -j 2 # Start compilation using two processor cores
sudo mkdir /boot-files # Create directory to store boot files
sudo cp arch/x86/boot/bzImage /boot-files/ # Copy kernel image to /boot-files
cd .. # Go back to root directory
git clone --depth 1 https://git.busybox.net/busybox # Clone BusyBox repository (last commit only)
cd busybox # Change directory to busybox
make menuconfig # Configure BusyBox (enable static binary)
make -j 2 # Compile BusyBox using two cores
sudo mkdir /boot-files/initramfs # Create initramfs directory
sudo make CONFIG_PREFIX=/boot-files/initramfs install # Install BusyBox structure into initramfs
cd /boot-files/initramfs # Change directory to initramfs
sudo vi init # Edit init file with vi as superuser
cat init # Show content of init
sudo rm linuxrc # Remove linuxrc file
sudo chmod +x init # Give execute permission to init
sudo sh -c "find . | cpio -o -H newc > ../init.cpio" # Pack initramfs into init.cpio
cd .. # Go back to root directory
sudo su # Switch to superuser
dd if=/dev/zero of=boot bs=1M count=50 # Create 50MB empty file as virtual disk
mkfs -t fat boot # Format file with FAT filesystem
syslinux boot # Install Syslinux bootloader
mkdir m # Create mount directory
mount boot m # Mount boot file into m
cp bzImage init.cpio m # Copy kernel and initramfs into mounted directory
umount m # Unmount directory
sudo qemu-system-x86_64 -nographic -append "console=ttyS0" -kernel bzImage -initrd init.cpio -drive file=boot,format=raw # Run OS using QEMU
ls # List files in OS
pwd # Show current directory path
vi init # Edit init file
bc # Open calculator
quit # Exit calculator