ls # Lists files and directories in the current location.
Darwin_llave.asc               doc_no_cifrado.txt.sig
LICENSE                        doc_no_cifradoDarwinAl.txt
README.md                      doc_no_cifradoDarwinAl.txt.gpg
calculadora                    doc_no_cifradoDarwinAl.txt.sig
cifrado_firmado_final.txt.gpg  doc_no_cifrado_firmado.txt
da_llave_publica.asc           final_cifrado_firmadoDarwinAl.txt.gpg
doc_cifrado.txt                gnupg_script.sh
doc_cifrado_daral.txt          mi_clave_publica.asc
doc_no_cifrado.txt             script_linux_cisco_1.sh
doc_no_cifrado.txt.gpg
ls calculadora # Lists the contents specifically inside the calculadora folder.
app.py  sumas.py 
ls -l #The command is used to list directory contents in long format. Instead of just showing the names of the files, it provides a detailed breakdown of permissions, ownership, and metadata.
total 112
-rw-rw-rw-  1 codespace root       3203 May  2 12:27 Darwin_llave.asc
-rw-rw-rw-  1 codespace root      34523 May  2 12:27 LICENSE
-rw-rw-rw-  1 codespace root         53 May  2 12:27 README.md
drwxrwxrwx+ 2 codespace root       4096 May  2 12:27 calculadora
-rw-rw-rw-  1 codespace root       1217 May  2 12:27 cifrado_firmado_final.txt.gpg
-rw-rw-rw-  1 codespace root       3204 May  2 12:27 da_llave_publica.asc
-rw-rw-rw-  1 codespace root        632 May  2 12:27 doc_cifrado.txt
-rw-rw-rw-  1 codespace root       1146 May  2 12:27 doc_cifrado_daral.txt
-rw-rw-rw-  1 codespace root         16 May  2 12:27 doc_no_cifrado.txt
-rw-rw-rw-  1 codespace root       1744 May  2 12:27 doc_no_cifrado.txt.gpg
-rw-rw-rw-  1 codespace root        566 May  2 12:27 doc_no_cifrado.txt.sig
-rw-rw-rw-  1 codespace root          8 May  2 12:27 doc_no_cifradoDarwinAl.txt
-rw-rw-rw-  1 codespace root        622 May  2 12:27 doc_no_cifradoDarwinAl.txt.gpg
-rw-rw-rw-  1 codespace root        566 May  2 12:27 doc_no_cifradoDarwinAl.txt.sig
-rw-rw-rw-  1 codespace root        898 May  2 12:27 doc_no_cifrado_firmado.txt
-rw-rw-rw-  1 codespace root       1209 May  2 12:27 final_cifrado_firmadoDarwinAl.txt.gpg
-rw-rw-rw-  1 codespace root       1633 May  2 12:27 gnupg_script.sh
-rw-rw-rw-  1 codespace root       3195 May  2 12:27 mi_clave_publica.asc
-rw-rw-rw-  1 codespace codespace  4678 May  3 15:16 script_linux_cisco_1.sh
ls -r #The command stands for reverse. By default, the ls command lists files in alphabetical order; adding the -r flag flips that order.
aptitude moo # A hidden Easter egg that asks if there are any animals in this program.
ls - # An invalid command; ls expects a specific flag after the dash.
ls -ls # Lists contents with detailed information and displays file sizes in blocks.
ls -l # Lists files in long format, showing permissions, owners, and timestamps.
ls -r # Lists the contents in reverse alphabetical order.
script_linux_cisco_1.sh                doc_no_cifradoDarwinAl.txt.sig  doc_no_cifrado.txt             calculadora
mi_clave_publica.asc                   doc_no_cifradoDarwinAl.txt.gpg  doc_cifrado_daral.txt          README.md
gnupg_script.sh                        doc_no_cifradoDarwinAl.txt      doc_cifrado.txt                LICENSE
final_cifrado_firmadoDarwinAl.txt.gpg  doc_no_cifrado.txt.sig          da_llave_publica.asc           Darwin_llave.asc
doc_no_cifrado_firmado.txt             doc_no_cifrado.txt.gpg          cifrado_firmado_final.txt.gpg
ls -l #The command combines two flags to show a detailed, reversed list of your files.
-rw-rw-rw-  1 codespace root       1146 May  2 12:27 doc_cifrado_daral.txt
-rw-rw-rw-  1 codespace root        632 May  2 12:27 doc_cifrado.txt
-rw-rw-rw-  1 codespace root       3204 May  2 12:27 da_llave_publica.asc
-rw-rrw-rw-  1 codespace root       1217 May  2 12:27 cifrado_firmado_final.txt.gpg
drwxrwxrwx+ 2 codespace root       4096 May  2 12:27 calculadora
-rw-rw-rw-  1 codespace root         53 May  2 12:27 README.md
-rw-rw-rw-  1 codespace root      34523 May  2 12:27 LICENSE
-rw-rw-rw-  1 codespace root       3203 May  2 12:27 Darwin_llave.asc
aptitude moo # Repeats the Easter egg command (same as line 3).
aptitude -v moo # A more persistent version of the Easter egg (v for verbose).
aptitude -vv moo # The Easter egg responds with more annoyance at being asked.
aptitude -vvv moo # The Easter egg continues to escalate its response.
aptitude -v -v moo # Another way to increase verbosity for the Easter egg response.
pwd # The pwd command is used to show you exactly where you are in the Linux filesystem hierarchy.
/workspaces/UNIX-02-SIN-C-Mar-Jul-2026
cd / # Moves to the system root directory, the top of the hierarchy.
cd /home/sysadmin # Moves to the specific home directory of the sysadmin user.
@cayetano-c ➜ ~ $ cd nvm/test
@cayetano-c ➜ ~/nvm/test (62387b8) $ pwd
/home/codespace/nvm/test
#In Linux and other operating systems, the double dot (..) represents the parent directory relative to your current location.
cd .. # Moves up one level to the previous parent directory.
cd ~ # Instantly returns to the current user's home directory.
ls -l /var/log/ # Lists system log files with detailed information.
ls -lt /var/log #ls -lt Lists log files sorted by time, showing newest first.
ls -l -s /var/log #ls -t -s Lists log files showing both details and individual file sizes.
ls -lSr /v # Lists files in /v sorted by size in reverse.
ls -r /var/log # Lists the contents of the log directory in reverse order.
@cayetano-c ➜ /home $ ls -lt
total 12
drwxr-x--- 1 codespace codespace 4096 May  2 13:52 codespace
drwxr-xr-x 3 root      root      4096 May  2 12:26 vscode
@cayetano-c ➜ /home $ ls -l -s
total 12
8 drwxr-x--- 1 codespace codespace 4096 May  2 13:52 codespace
4 drwxr-xr-x 3 root      root      4096 May  2 12:26 vscode
@cayetano-c ➜ /home $ ls -lSr
total 12
drwxr-xr-x 3 root      root      4096 May  2 12:26 vscode
drwxr-x--- 1 codespace codespace 4096 May  2 13:52 codespace
@cayetano-c ➜ /home $ ls -r
vscode  codespace
su - # Switches to the root user while loading the root environment.
su # Switches to another user (usually root) without changing the environment.
sl # Displays an animation of a steam locomotive (used to mock typos of ls).
su - # Repeats the switch to root user with environment loading.
sudo sl # Runs the steam locomotive animation with administrative privileges.
sysadmin@localhost:~$  sudo sl
[sudo] password for sysadmin:
cd ~/Documents # Changes directory to Documents using the home shortcut.
ls -l hello.sh # Checks the permissions and details of the file "hello.sh".
@cayetano-c ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (linux_cisco_1) $ cd calculadora
@cayetano-c ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/calculadora (linux_cisco_1) $ ls -l
total 8
-rw-rw-rw- 1 codespace root 36 May  2 12:27 app.py
-rw-rw-rw- 1 codespace root 32 May  2 12:27 sumas.py
./hello.sh # Attempts to run the script "hello.sh" in the current folder.
chmod u+x hello.sh # Makes the "hello.sh" file executable for the user.
ls -l hello.sh # Verifies that the execution permission (x) was added.
./hello.sh # Runs the script "hello.sh" now that it has permission.
 ______________                                                                 
( Hello World! )                                                                
 --------------                                                                 
        \                                                                       
         \                                                                      
           <(^)                                                                 
            ( ) 
sudo chown root hello.sh # Changes the owner of the script to the root user.
ls -l hello.sh # Confirms that root is now the owner of the file.
./hello.sh # Runs the script (execution remains possible if permissions allow).
cat #The command (short for "concatenate") is one of the most frequently used tools in Linux for handling text files.
@cayetano-c ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/calculadora (linux_cisco_1) $ cat doc_no_cifrado.txthead alpha.txt # Displays the first 10 lines of the "alpha.txt" file.
Visca el Barça
cat animals.txt # Prints the entire content of "animals.txt" to the terminal.
sysadmin@localhost:~/Documents$ cat animals.txt