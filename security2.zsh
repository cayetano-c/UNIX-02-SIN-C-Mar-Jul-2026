# View the current primary group
id
# only the name of the primary group
id -gn 
# Create a file and see which group it inherits
touch ~/test_grupo_heredado.txt
# The group is the user's primary group
ls -la ~/test_grupo_heredado.txt
# View the current group
id -gn
echo "Current group: $(id -gn)"

# Create a file before newgrp
touch ~/antes_de_newgrp.txt
ls -la ~/antes_de_newgrp.txt

#Installs additional essential system utilities for Linux (such as extra multi-user administration tools).
apt install util-linux-extra 
#Creates a new system group named desarrolladores (developers).
groupadd desarrolladores
#Switches your current shell session's primary group to desarrolladores.
newgrp desarrolladores 
