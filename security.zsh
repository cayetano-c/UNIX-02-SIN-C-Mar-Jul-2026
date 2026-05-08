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