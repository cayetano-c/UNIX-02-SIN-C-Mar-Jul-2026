#!/bin/bash
#!/usr/bin/env bash
set -x
bash --version
env
echo ${SHELL}
echo ${RANDOM}
echo ${UID}
echo ${OSTYPE}
ps -ef
df --human-readable

#Debug mode. Prints every command before executing it (useful for troubleshooting).
#bash -x blackhatbash1.sh

#Restricted mode. Disallows certain actions like changing directories (cd) or modifying paths for security.
#bash -r blackhatbash1.sh

#Executes the script in the current directory.
#./blackhatbash1.sh

#Grants permission to the owner (u) to execute (x) the file. (Usually, you run this one first so the command above will actually work!)
chmod u+x blackhatbash1.sh

#bash -n blackhatbash1.sh
set +x
