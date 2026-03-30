sudo apt update #Update the list of available packages and their versions from the repositories.
sudo apt upgrade #Install the latest versions of the programs you already have installed.
sudo apt install parted #Download and install Parted, a tool for managing hard drive partitions.
pip install numpy #Install the NumPy library to perform numerical calculations and efficiently handle multidimensional arrays.
sudo parted -l && echo -e "\---\n" && lsblk -f && echo -e "\n---\n"
sudo parted -l #Tells you the physical size of the disk, the type of partition table (GPT or MBR) and whether there is unallocated free space.
lsblk -f #It is key to identifying which partition corresponds to which folder and what format they have.
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS" #Detects whether the system booted using UEFI or traditional BIOS by verifying the existence of a specific directory.

