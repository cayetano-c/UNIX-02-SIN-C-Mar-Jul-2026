#!/bin/bash
#!/usr/bin/env bash
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
