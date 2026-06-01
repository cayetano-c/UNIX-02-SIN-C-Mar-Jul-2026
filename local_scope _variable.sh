#!/bin/bash
PUBLISHER="No Starch Press"
print_name(){
    local name
    name="Black Hat Bash"
    echo "${name} by ${PUBLISHER}"
}
print_name
echo "Variable ${name} will not be printed because it is a l ocal variable."

#What is the difference between a local variable and a global variable, and what are the specifics of function calls in Bash?
#The main difference is that global variables (like PUBLISHER) are accessible throughout the entire program,
#whereas local variables (declared with the local keyword, like name) are restricted and can only be accessed within the specific function where they are defined.
#The unique characteristic of invoking functions in Bash is that once a function is called, 
#it can seamlessly read existing global variables, but any local variables created during its execution are completely destroyed as soon as the function finishes, 
#leaving them empty and inaccessible to the rest of the script.