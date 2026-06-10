#!/bin/bash
#Assign variables (FIRST AND LAST NAME)
FIRSTNAME="Cayetano"
LASTNAME="Córdova"
#Create output.txt file
touch output1.txt
#Write the current date in it
date +"%d-%m-%Y" >> output1.txt

#Put my name in the output.txt file
echo "$FIRSTNAME $LASTNAME" >> output1.txt

#Backup the output.txt file by copying it to a new file called output_backup.txt
cp output1.txt output_backup.txt

#Print the content of the output.txt file
cat output1.txt