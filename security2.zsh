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
#Prints the name of your newly active primary group.
id -gn
#Outputs a text confirmation showing the active group you just switched to.
echo "New active group: $(id -gn)"

#Updates the system's package index (list of available repositories)
apt update

#Upgrades all installed packages to their latest available version
apt upgrade

#Installs the 'util-linux-extra' package which provides the 'newgrp' command
apt install util-linux-extra

#Switches the active group of the current session to 'desarrolladores'
#Opens a new subshell with that group set as the effective GID
newgrp desarrolladores

#Displays the name of the current effective group (verifies the switch was successful)
id -gn

#Displays the PID (Process ID) of the current shell
#Useful to confirm that 'newgrp' spawned a new subshell (different PID than before)
echo $$

# Creates an empty file in the user's home directory to verify
# that newly created files inherit 'desarrolladores' as the owning group
touch ~/after_newgrp.txt

# Lists the detailed attributes of the newly created file (permissions, owner, group, date)
ls -la ~/after_newgrp.txt
# Create a file inside the subshell
touch ~/dentro_de_newgrp.txt
ls -la ~/dentro_de_newgrp.txt

# The group is now 'desarrolladores'
# Create a directory
mkdir -p ~/proyecto_dev/src
ls -la ~/

# newgrp creates a subshell — this can be proven
echo "Current shell PID: $$"
newgrp desarrolladores
echo "PID inside newgrp: $$"
# The PID is different — it is a child process

#[🐐Cayetano_Córdova] UNIX-02-SIN-C-Mar-Jul-2026 ✓ # echo "Current shell PID: $$"
#Current shell PID: 15088                                                                                                                                                                        
#[🐐Cayetano_Córdova] UNIX-02-SIN-C-Mar-Jul-2026 ✓ # newgrp desarrolladores
#[🐐Cayetano_Córdova] UNIX-02-SIN-C-Mar-Jul-2026 ✓ # echo "PID inside newgrp: $$"
#PID inside newgrp: 28077
                           