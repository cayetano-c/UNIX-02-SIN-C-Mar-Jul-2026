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
