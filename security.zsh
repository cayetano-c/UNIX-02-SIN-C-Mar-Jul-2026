id #Displays the real and effective user and group IDs.
groups #Prints the names of the groups the current user belongs to.
cat /etc/passwd #Displays the contents of the system's user account database.
cat /etc/passwd | head -10 #Shows only the first 10 entries (lines) of the user account file.

#My files and directories inherit the GID and UID
touch test.txt
ls -la
#Criptografia postcuántica

cat /etc/group | head -10 #View all groups on my system
groups $USER #Displays the group memberships for the specific user currently logged into the environment.

id -u #Prints only the Effective User ID (UID).
id -g #Prints only the Effective Group ID (GID).
id -G #Prints all Group IDs (both primary and supplementary) associated with the user.

groupadd desarroolladores #Create a new standard user group named "desarroolladores".
groupadd -g 2000 operaciones #Create a group with a specific Group ID (GID) set to 2000.
groupadd --system servicios_web #Create a system account group (usually for services, with a GID in the lower reserved range).
grep -E "desarroolladores|operaciones|servicios_web" /etc/group #Search and filter the group database file using Extended Regular Expressions.

[🐐Cayetano_Córdova] UNIX-02-SIN-C-Mar-Jul-2026 ✓ # grep -E "GID_MIN|GID_MAX|SYS_GID" /etc/login.defs #Search for specific configuration variables in the login definition file to identify the range of Group IDs (GIDs) allowed for regular and system groups.
GID_MIN                  1000
GID_MAX                 60000
#SYS_GID_MIN              101
#SYS_GID_MAX              999
SUB_GID_MIN                100000
SUB_GID_MAX             600100000

addgroup diseno #Create a new standard group named "diseno".
addgroup -gid 2100 marketing #Create a group with a specific ID (GID 2100).
addgroup --system cache_web #Create a system group (used for services/daemons).
[🐐Cayetano_Córdova] UNIX-02-SIN-C-Mar-Jul-2026 ✓ # grep -E "diseno|marketing|cache_web" /etc/group #Verify group creation by searching the group database.
diseno:x:1001:
marketing:x:2100:
cache_web:x:102:

usermod -aG desarroolladores root #Add the "root" user to the "desarrolladores" group without removing them from their current groups.
usermod -aG diseno root #Add the user "root" to the "diseno" group as a supplementary member.

grep -E "desarroolladores|diseno" /etc/group #Search for lines matching "desarroolladores" or "diseno" in the system group file.
adduser root marketing #Adds the user "root" to the "marketing" group. 
grep root /etc/group #Displays the entry for the "root" group in the system group file.
id root #Shows the user ID (UID), group ID (GID), and all group memberships for the user "root".
groupadd grupo_temporal #Creates a new group named "grupo_temporal" in the system.
usermod -aG grupo_temporal root #Adds the user "root" to the "grupo_temporal" group as a supplementary group.
usermod -G desarroolladores root #Changes the user "root" primary/supplementary groups to only "desarroolladores", removing all other secondary groups.
[🐐Cayetano_Córdova] UNIX-02-SIN-C-Mar-Jul-2026 ✓ # id root
uid=0(root) gid=0(root) grupos=0(root),1000(desarroolladores)

usermod -aG diseno,marketing,grupo_temporal root #Adds the user "root" to the "diseno", "marketing", and "grupo_temporal" groups without removing existing memberships.
[🐐Cayetano_Córdova] UNIX-02-SIN-C-Mar-Jul-2026 ✓ # id root
uid=0(root) gid=0(root) grupos=0(root),1000(desarroolladores),1001(diseno),2100(marketing),2101(grupo_temporal) #Restored groups

mkdir -p ~/lab_chgrp/{proyectos,reportes,scripts} #Creates a directory named "lab_chgrp" with three subdirectories simultaneously.
touch ~/lab_chgrp/proyectos/app.py #Creates an empty file named "app.py" inside the "proyectos" folder.
touch ~/lab_chgrp/proyectos/config.json #Creates an empty file named "config.json" inside the "proyectos" folder.
touch ~/lab_chgrp/reportes/informe.txt #Creates an empty file named "informe.txt" inside the "reportes" folder.
touch ~/lab_chgrp/scripts/deploy.sh #Creates an empty file named "deploy.sh" inside the "scripts" folder.

#Lists detailed attributes, permissions, and ownership for all files in the "proyectos" directory.
[🐐Cayetano_Córdova] UNIX-02-SIN-C-Mar-Jul-2026 ✓ # ls -la ~/lab_chgrp/proyectos/
total 8
drwxr-xr-x 2 root root 4096 may 11 14:58 .
drwxr-xr-x 5 root root 4096 may 11 14:57 ..
-rw-r--r-- 1 root root    0 may 11 14:58 app.py
-rw-r--r-- 1 root root    0 may 11 14:58 config.json

 #Lists detailed attributes, permissions, and ownership for all files in the "reportes" directory.                                                                                                                                                                                                        
[🐐Cayetano_Córdova] UNIX-02-SIN-C-Mar-Jul-2026 ✓ # ls -la ~/lab_chgrp/reportes/ 
total 8
drwxr-xr-x 2 root root 4096 may 11 14:59 .
drwxr-xr-x 5 root root 4096 may 11 14:57 ..
-rw-r--r-- 1 root root    0 may 11 14:59 informe.txt
                                                        