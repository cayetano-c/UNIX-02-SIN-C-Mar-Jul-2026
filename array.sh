#!/bin/bash
# Sets an array
IP_ADDRESSES=(192.168.1.1 192.168.1.2 192.168.1.3)
unset IP_ADDRESSES[1]
IP_ADDRESSES[0]="192.168.1.10"
# Prints all elements in the array
set +x
echo "${IP_ADDRESSES[*]}"
set -x
# Prints only the first element in the array
echo "${IP_ADDRESSES[0]}"


# & ---> Sends a command to the background.
# &&(and) ---> Used as a logical AND. The second command in the expression will be evaluated only if the first command evaluates to true.
# ; ---> Used as a list terminator. A command following the terminator will run after the preceding command has finished, regardless of whether it evaluates to true or not.
# ;; ---> Ends a case statement.
# | ---> Redirects the output of a command as input to another command.
# || ---> Used as a logical OR. The second command will run if the first one evaluates to false.