#!/bin/bash
for index in $(seq 1 10); do
  echo "${index}"
done

touch example_file1 example_file2 example_file3

grep "35.237.4.214" log.txt

grep "35.237.4.214\|13.66.139.0" log.txt

grep -e "35.237.4.214" -e "13.66.139.0" log.txt

ps | grep TTY

ps | grep tty

ps | grep -i tty

grep -v "35.237.4.214" log.txt

grep -o "35.237.4.214" log.txt

awk '{print $1}' log.txt

awk '{print $3}' log.txt

awk '{print $1,$2,$3}' log.txt

awk '{print $1,$NF}' log.txt


echo -e "hola1,chao1\nhola2,chao2\nhola3,chao3" > test.csv

head log.txt

#Filters the file to show only the full lines containing that specific IP address.
grep "42.236.10.117" log.txt

#Extracts and prints only the 7th column (the requested URLs) from the entire file.
awk '{print $7}' log.txt

#Combines both to show only the URLs requested by that specific IP address.
grep "42.236.10.117" log.txt | awk '{print $7}'
