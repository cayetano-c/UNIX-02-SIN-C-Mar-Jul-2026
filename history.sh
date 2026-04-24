cd /workspaces/UNIX-02-SIN-B-Mar-Jul-2026
git remote add upstream https://github.com/jonathanetitoo/UNIX-02-SIN-B-Mar-Jul-2026
cd /workspaces/UNIX-02-SIN-B-Mar-Jul-2026
git fetch upstream
git checkout -b eval_p2_1_g1 upstream/eval_p2_1_g1
git push -u origin eval_p2_1_g1
mv orion/notas orion/apuntes
git add .
cd evaluation
git commit -m "Fix problema 1: estructura de directorios corregida"
mv orion/telemetria.log orion/apuntes/
mv orion/config.tmp orion/config.conf
git add .
git commit -m "Fix problema 2: archivos movidos y renombrados"
chmod 640 orion/apuntes/telemetria.log
git commit -m "Fix problema 1.2: "
git add .
git commit -m "Fix problema 3: permisos numericos 640 en telemetria.log"
chmod u+x orion/script.sh
chmod o-w orion/config.conf
git add .
git commit -m "Fix problema 3 y 4: permisos numericos 640 en telemetria.log y permisos simbolicos corregidos"
chmod u+s orion/script.sh
git add .
git commit -m "Fix problema 5: SUID activado en script.sh"
sudo mkdir -p /tmp/orion_zone
sudo chmod 777 /tmp/orion_zone
sudo chmod +t /tmp/orion_zone
git add .
git commit -m "Fix problema 5 y 6:SUID activado en script.sh y sticky bit en /tmp/orion_zone"
cat > /tmp/mi_llave.batch <<'EOF'
%no-protection
Key-Type: RSA
Key-Length: 2048
Name-Real: lyra
Name-Email: lyra@orion.lab
Expire-Date: 0
%commit
EOF
gpg --batch --generate-key /tmp/mi_llave.batch
gpg --encrypt --recipient lyra@orion.lab orion/apuntes/telemetria.log
git add .
git commit -m "Fix problema 7: llave GPG generada y telemetria.log cifrado"
gpg --clearsign orion/config.conf
gpg --detach-sign --armor --output orion/script.sh.sig orion/script.sh
git add .
git commit -m "Fix problema 8: firmas GPG corregidas y creadas"
history