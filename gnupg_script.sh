gpg --list-key s #This command lists the key.
gpg --list-secret-keys --keyid-format=long #This command lists the private key.
gpg --armor --export-secret-keys D83BBF4AAE393973 #This command exports the private key
gpg --import Darwin #Public key export
gpg -armor --export caye.cordova007@gmail.com > mi_clave_publica.asc #Export your public key to a file
gpg --import Darwin_llave.asc #