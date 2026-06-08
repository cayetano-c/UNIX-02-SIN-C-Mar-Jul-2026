#!/bin/bash
#---------------------------
touch test && touch test123
#---------------------------
(ls; ps)
#---------------------------
ls; ps; whoami
#---------------------------
lzl || echo "el comando lzl falló"

#---------------------------
# > ---> Redirects stdout to a file
# >> ---> Redirects stdout to a file by appending it to the existing content
# &> or >& ---> Redirects stdout and stderr to a file
# &>> ---> Redirects stdout and stderr to a file by appending them to the existing content
# <  ---> Redirects input to a command
# << ---> Called a here document, or heredoc, redirects multiple input lines to a command
# | ---> Redirects output of a command as input to another command

#---------------------------
echo "Hello World!" > output.txt
cat output.txt
echo "Goodbye!" >> output.txt
cat output.txt

#---------------------------
ls -l / &> stdout_and_stderr.txt
cat stdout_and_stderr.txt
#---------------------------
ls -l / &>> stdout_and_stderr.txt
cat stdout_and_stderr.txt
#---------------------------
 ls -l / 1> stdout.txt 2> stderr.txt
cat stdout.txt
cat stderr.txt
#---------------------------
lzl 2> error.txt
cat error.txt
#---------------------------
cat < output.txt
#---------------------------
cat << EOF
>BlackHatBash
>by No Starch Press
>EOF
