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