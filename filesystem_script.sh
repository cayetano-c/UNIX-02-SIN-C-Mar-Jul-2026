cd /dev #change directory to dev directory.
ls #List files and directories.
cd /proc #Change directory to proc directory.
ls #List process on proc directory.
cat cpuinfo #Shows CPU information
cd / #Change to general directory
ls #list general directory files
cd /bin #change to the bin directory
ls #List bin directory files
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 #Change to the workspace directory
gcc saludo.c -o saludo_bin #Change the file to a binary file
sudo mv saludo_bin /bin #Move the file to the bin directory
ls #List the bin directory to look for the saludo_bin file
cat saludo_bin #Shows the saludo_bin content
cd /home #Change directory to Home
saludo_bin #Print the original file content, not the binary 
pwd #Is used for know where I´m moving.
cd / #Change to general directory
ls -F #Classify the type of files
ls -i #Displays the unique inode number identifying each file or directory
echo "MEEEEEEEESSI" >  test.txt #Create a file with a meessage
stat test.txt #Shows detailed information of a file
