#List all the directories
ls -a #Short option
ls --all #Long option
#.           Darwin_llave.asc     calculadora                    doc_cifrado_daral.txt   doc_no_cifradoDarwinAl.txt      final_cifrado_firmadoDarwinAl.txt.gpg
#..          LICENSE              cifrado_firmado_final.txt.gpg  doc_no_cifrado.txt      doc_no_cifradoDarwinAl.txt.gpg  gnupg_script.sh
#.git        README.md            da_llave_publica.asc           doc_no_cifrado.txt.gpg  doc_no_cifradoDarwinAl.txt.sig  mi_clave_publica.asc
#.gitignore  boot_exploration.sh  doc_cifrado.txt                doc_no_cifrado.txt.sig  doc_no_cifrado_firmado.txt

ls -l -a -h #The command ls -lah is used to list every file in a folder with full details
ls -l -ah #Short option
ls -lah #Other short option

#total 128K
#drwxrwxrwx+ 4 codespace root      4.0K Apr 17 14:15 .
#drwxr-xrwx+ 5 codespace root      4.0K Apr 17 14:14 ..
#drwxrwxrwx+ 8 codespace root      4.0K Apr 17 14:24 .git
#-rw-rw-rw-  1 codespace root      4.6K Apr 17 14:14 .gitignore
#-rw-rw-rw-  1 codespace root      3.2K Apr 17 14:14 Darwin_llave.asc
#-rw-rw-rw-  1 codespace root       34K Apr 17 14:14 LICENSE
#-rw-rw-rw-  1 codespace root        53 Apr 17 14:14 README.md
#-rw-rw-rw-  1 codespace codespace  721 Apr 17 14:26 boot_exploration.sh
#drwxrwxrwx+ 2 codespace root      4.0K Apr 17 14:14 calculadora
#-rw-rw-rw-  1 codespace root      3.2K Apr 17 14:14 da_llave_publica.asc
#-rw-rw-rw-  1 codespace root       632 Apr 17 14:14 doc_cifrado.txt
#-rw-rw-rw-  1 codespace root      1.2K Apr 17 14:14 doc_cifrado_daral.txt
#-rw-rw-rw-  1 codespace root        16 Apr 17 14:14 doc_no_cifrado.txt
#-rw-rw-rw-  1 codespace root      1.8K Apr 17 14:14 doc_no_cifrado.txt.gpg
#-rw-rw-rw-  1 codespace root       566 Apr 17 14:14 doc_no_cifrado.txt.sig
#-rw-rw-rw-  1 codespace root         8 Apr 17 14:14 doc_no_cifradoDarwinAl.txt
#-rw-rw-rw-  1 codespace root       622 Apr 17 14:14 doc_no_cifradoDarwinAl.txt.gpg
#-rw-rw-rw-  1 codespace root       566 Apr 17 14:14 doc_no_cifradoDarwinAl.txt.sig
#-rw-rw-rw-  1 codespace root       898 Apr 17 14:14 doc_no_cifrado_firmado.txt
#-rw-rw-rw-  1 codespace root      1.2K Apr 17 14:14 final_cifrado_firmadoDarwinAl.txt.gpg
#-rw-rw-rw-  1 codespace root      1.6K Apr 17 14:14 gnupg_script.sh
#-rw-rw-rw-  1 codespace root      3.2K Apr 17 14:14 mi_clave_publica.asc

mkdir -- -rf #Create a directory literally named -rf
rmdir -- -rf #Deletes the directory named -rf

ls --help #displays a comprehensive list of all the options you can use with the ls.
man ls #Opens a full, paginated documentation file that explains everything about the ls command.
man git-clone #manual for the git clone command.
#--depth <depth>
#           Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless --no-single-branch is given to fetch the
#           histories near the tips of all branches. If you want to clone submodules shallowly, also pass --shallow-submodules.

#-rw-rw-rw-  1 codespace root       3203 Apr 17 14:14 Darwin_llave.asc
#| |  |  |- Permissions for others -> Everyone else on the system can Read and Write.
#| |  |---- Permissions for group -> Members of the group (root) can Read and Write.
#| |------- Permissions for owner -> The owner can Read and Write.
#|--------- Type of file -> It is a regular file 

touch script.sh #This command creates an empty file
# -rw-rw-rw-  1 codespace codespace     0 Apr 17 14:55 script.sh
chmod +x script.sh #Makes the file executable for everyone
#-rwxrwxrwx  1 codespace codespace     0 Apr 17 14:55 script.sh
chmod u+x script.sh #Gives the owner permission to run the file
chmod o-r secreto.txt #Stops others from reading the file
chmod u+x,go-rwx privado #Makes the file private so only the owner can run it while everyone else is locked out.
#-rwx------  1 codespace codespace     0 Apr 17 15:00 privado

sudo echo "hola" > /etc/archivo_protegido #The command cannot be executed because “sudo” only runs the command that appears next to it
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null #Write 'hola' to a protected system file using administrative privileges while keeping the terminal output completely silent.
echo "hola" | sudo tee /etc/archivo_protegido  #Write 'hola' to a protected system file using administrative privileges and display the text in the terminal to confirm the action
sudo sh -c 'echo "chao" >> /etc/archivo_protegido' #Run a shell as a superuser to append the word 'chao' to the end of a protected system file.
cat /etc/archivo_protegido #Display the entire contents of the protected file on the terminal screen.
sudo -i #Open an interactive shell with root environment and privileges, and to exit, we use “exit”.
#Print the absolute path of the current user's home directory to the terminal.
echo "$HOME"
echo "$BASH"

#Print the literal string '$HOME' to the terminal without expanding the variable.
echo '$HOME'


echo '#!/bin/sh' > hola.sh #Create a new file named hola.sh and write the '' line to specify that it should be executed using the system shell.
echo 'echo "Hola Mundo"' >> hola.sh #Append the command to print 'Hola Mundo' to the end of the hola.sh file without overwriting the existing content.
cat hola.sh #Read and display the contents of the hola.sh file in the terminal to verify the script's code.
ls -l hola.sh #List the file details in long format to check the current permissions, owner, and size of hola.sh.
chmod +x hola.sh #Modify the file permissions to make the script executable for the user.
ls -l hola.sh #List the file details again to confirm that the 'x' (executable) permission has been successfully added.
./hola.sh #Run the script located in the current directory and execute the instructions contained inside it.
history #Display a numbered list of all the commands previously executed.

#LOOK IF THE COMMANDS NEEDS SUDO OR NOT
ls /etc #Does not need it. Reading /etc is public.
touch /etc/prueba.txt #Yes, it needs it. /etc belongs to root and does not allow normal users to write to it.
mkdir ~/mi_carpeta #Does not need it. ~ is your own home (personal directory).
apt install cowsay #Yes, it needs it. Installing packages affects system directories (/usr/bin, etc.).
#EXERCISE 2
touch prueba.txt #Create an empty file named prueba.txt or update its timestamp if it already exists.
chmod 600 prueba.txt #Restrict the file so only the owner can read and write to it, while denying all access to everyone else.
ls -l prueba.txt #Display the file's details in long format to verify that the permissions are now set to -rw-------.
chmod 755 prueba.txt #Modify the permissions so the owner has full control, while others can only read and execute the file.
ls -l prueba.txt #List the detailed information of prueba.txt to verify that permissions are now set to read, write, and execute for the owner, and read and execute for everyone else.
#To solve the "umask" problem without using AI, it's best to use Google Search and look up the issue; that way, we'll find the solution. If we use AI without the necessary knowledge, we'll just end up confused. But by using the search engine, we'll find various websites where the problem has already been solved, allowing us to understand both the problem and the solution.sudo apt-get update 
sudo apt update #This command refreshes the local index of available packages.
sudo apt-get upgrade #Updates all currently installed packages on your system to their latest versions based on the software sources list.
sudo apt install acl #Installs the Access Control List (ACL) utility, which allows for more flexible and granular permission management than standard Linux permissions.
sudo chown -R $(whoami) . #Recursively changes the ownership of the current directory (and everything inside it) to your current user. The . represents the current directory, and -R stands for recursive.
sudo setfacl -bnR . #Removes all extended ACL entries and restores the directory to its standard permissions recursively. -b: Removes all extended ACL entries. -n: Don't recalculate the mask. -R: Recursive.
