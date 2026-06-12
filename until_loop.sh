#!/bin/bash
# Defines a variable named FILE and assigns it the string value "output.txt".
FILE="output2.txt"

# Creates an empty file named "output.txt" (or updates its timestamp if it already exists).
touch "${FILE}"
# Starts an "until" loop. It will keep running as long as the condition is FALSE.
# The "-s" flag checks if the file exists and has a size greater than 0 bytes (not empty).
# So, this translates to: "Keep looping UNTIL the file is no longer empty."
until [[ -s "${FILE}" ]]; do
# Prints a message to the terminal stating that the file is currently empty.
  echo "${FILE} is empty..."
  # Prints a message letting the user know the script is about to pause.
  echo "Checking again in 2 seconds..."
  # Pauses the execution of the script for 2 seconds before checking the condition again.
  sleep 2

# Marks the end of the "until" loop block.
done

# This line only runs AFTER the loop finishes (meaning another process finally wrote data to the file).
# It prints a success message to the terminal.
echo "${FILE} appears to have some content in it!"
