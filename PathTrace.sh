#!/bin/bash

# Aplicando rápidamente las variables para poder crear el clear
export TERM=xterm
export SHELL=bash
clear

# Optimizando la terminal
echo -e "\033[1;32m========================= 🌱 Optimizando Terminal 🌱 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Ajustando la variable TERM para una mejor compatibilidad.\033[0m"
sleep 0.5
export TERM=xterm
echo -e "\033[1;33m2: Configurando el shell predeterminado a Bash.\033[0m"
sleep 0.5
export SHELL=bash
echo -e "\033[1;33m3: Activando soporte de colores en la terminal.\033[0m"
sleep 0.5
export TERM=xterm-256color
echo -e "\033[1;33m4: Aplicando cambios a la configuración del Bash.\033[0m"
sleep 0.5
source /etc/skel/.bashrc
echo -e "\033[1;33m5: Ajustando el tamaño de las columnas y filas para mejor visualización.\033[0m"
sleep 0.5
stty rows 61 columns 229

echo -e "\n"
sleep 1

# Reconocimiento del Sistema
echo -e "\033[1;32m========================= 🖥️ Reconocimiento del Sistema 🖥️ =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Contemplando la distribución del sistema operativo.\033[0m"
sleep 0.5
lsb_release -d | cut -f2- 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Contemplando la versión del kernel.\033[0m"
sleep 0.5
uname -r 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m3: Contemplando la versión de la Bash.\033[0m"
sleep 0.5
/bin/bash --version | grep -oP '\d+\.\d+\.\d+' 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m4: Contemplando la versión del Sudo.\033[0m"
sleep 0.5
sudo -V | grep -i "sudo" | head -n 1 | awk '{print $3}' 2>/dev/null

echo -e "\n"
sleep 1

# Listando archivos sensibles
echo -e "\033[1;31m========================= 🚨 Listando Archivos Sensibles 🚨 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Contemplando permisos del /etc/passwd.\033[0m"
sleep 0.5
ls -l /etc/passwd 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Contemplando permisos del /etc/shadow.\033[0m"
sleep 0.5
ls -l /etc/shadow 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m3: Contemplando permisos del /etc/group.\033[0m"
sleep 0.5
ls -l /etc/group 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m4: Contemplando permisos del /etc/sudoers.\033[0m"
sleep 0.5
ls -l /etc/sudoers 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m5: Contemplando permisos del /etc/crontab.\033[0m"
sleep 0.5
ls -l /etc/crontab 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m6: Contemplando permisos del /boot/grub/grub.cfg.\033[0m"
sleep 0.5
ls -l /boot/grub/grub.cfg 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m6: Contemplando permisos del /etc/ssh/sshd_config.\033[0m"
sleep 0.5
ls -l /etc/ssh/sshd_config 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m7: Contemplando permisos del /proc/sched_debug.\033[0m"
sleep 0.5
ls -l /proc/sched_debug/ 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m8: Contemplando permisos del /usr/share/ssl-cert.\033[0m"
sleep 0.5
ls -l /usr/share/ssl-cert/ 2>/dev/null

echo -e "\n"
sleep 1

# Listando el directorio home y usuarios
echo -e "\033[1;32m========================= 🏠 Listando el Directorio Home y Usuarios 🏠 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Usuarios Válidos del sistema.\033[0m"
sleep 0.5
cat /etc/passwd | grep "bash" 2>/dev/null
cat /etc/passwd | grep "zsh" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Directorio Home.\033[0m"
sleep 0.5
ls -la /home/ 2>/dev/null

echo -e "\n"
sleep 1

# Listando historial del usuario
echo -e "\033[1;32m========================= 📝 Listando Historial & Variables del Usuario 📝 =========================\033[0m"
sleep 0.5
history 2>/dev/null
env 2>/dev/null
alias 2>/dev/null

echo -e "\n"
sleep 1

# Listando información del usuario
echo -e "\033[1;34m========================= 👤 Listando Información del Usuario 👤 =========================\033[0m"
sleep 0.5
id 2>/dev/null

echo -e "\n"

echo -e "\033[1;34m========================= 📜 Apreta Ctrl + C en caso de no conocer las credenciales 📜 =========================\033[0m"
sleep 0.5
sudo -l 2>/dev/null

echo -e "\n"
sleep 1

# Listando Llaves SSH
echo -e "\033[1;31m========================= 🔐 Listando Llaves SSH 🔐 =========================\033[0m"
sleep 0.5
find / -name "id_rsa" 2>/dev/null
find / -name "id_rsa.pub" 2>/dev/null
find / -name "authorized_keys" 2>/dev/null

echo -e "\n"
sleep 1

# Listando Posibles archivos Comprimidos
echo -e "\033[1;31m========================= 📚 Listando Archivos Comprimidos 📚 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listando Archivos con Extension Zip.\033[0m"
sleep 0.5
find / -name "*.zip" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Listando Archivos con Extension Rar.\033[0m"
sleep 0.5
find / -name "*.rar" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m3: Listando Archivos con Extension 7z.\033[0m"
sleep 0.5
find / -name "*.7z" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m4: Listando Archivos con Extension Tar.\033[0m"
sleep 0.5
find / -name "*.tar" 2>/dev/null

echo -e "\n"
sleep 1

# Listando Posibles archivos Backup
echo -e "\033[1;31m========================= 💾 Listando Archivos Backup 💾 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listando Archivos con Extension Bak.\033[0m"
sleep 0.5
find / -name "*.bak" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Listando Archivos con Extension Old.\033[0m"
sleep 0.5
find / -name "*.old" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m3: Listando Archivos que contemplen el nombre Backup.\033[0m"
sleep 0.5
find / -name "*backup*" 2>/dev/null

echo -e "\n"
sleep 1

# Listando Posibles archivos de Bases de Datos
echo -e "\033[1;31m========================= 🗄️ Listando Archivos de Bases de Datos 🗄️ =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listando Archivos de Configuración de Bases de Datos.\033[0m"
sleep 0.5
find / -name "*config.php" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Listando Archivos de Bases de Datos MYSQL.\033[0m"
sleep 0.5
find / -name "*.sql" 2>/dev/null
find / -name "*.db" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m3: Listando Archivos de Bases de Datos SQLite3.\033[0m"
sleep 0.5
find / -name "*.sqlite3" 2>/dev/null

echo -e "\n"
sleep 1

# Listando Posibles Gestores de Contenido
echo -e "\033[1;31m========================= 🗄️ Listando Gestores de Contenido 🗄️ =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listando Wordpress.\033[0m"
sleep 0.5
find / -name "config-default.php" 2>/dev/null
find / -name "wp-config.php" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Listando Drupal.\033[0m"
sleep 0.5
find / -name "settings.php" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m3: Listando Jenkins.\033[0m"
sleep 0.5
find / -name "users.xml" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m4: Listando Tomcat.\033[0m"
sleep 0.5
find / -name "tomcat-users.xml" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m5: Listando Webmin.\033[0m"
sleep 0.5
find / -name "miniserv.users" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m6: Listando Dolibarr.\033[0m"
sleep 0.5
find / -name "conf.php" 2>/dev/null

echo -e "\n"
sleep 1

# Listando Posibles Gestores de Contraseñas
echo -e "\033[1;31m========================= 🔐 Listando Gestores de Contraseñas 🔐 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listando archivos de KeePass.\033[0m"
sleep 0.5
find / -name "*.kdbx" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Listando archivos de Password Safe.\033[0m"
sleep 0.5
find / -name "*.psafe3" 2>/dev/null

echo -e "\n"
sleep 1

# Listando Posibles Archivos Sensibles de FireFox
echo -e "\033[1;31m========================= 🦊 Listando Archivos Sensibles de FireFox 🦊 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listando archivos Key4.db de Firefox.\033[0m"
sleep 0.5
find / -name "key4.db" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Listando archivos Logins.json de Firefox.\033[0m"
sleep 0.5
find / -name "logins.json" 2>/dev/null

echo -e "\n"
sleep 1

# Listando binarios SUID
echo -e "\033[1;33m========================= 🔧 Listando Binarios SUID 🔧 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: SUID.\033[0m"
sleep 0.5
find / -perm -4000 -ls 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: GUID.\033[0m"
sleep 0.5
find / -perm -2000 -ls 2>/dev/null

echo -e "\n"
sleep 1

# Listando Capabilities
echo -e "\033[1;35m========================= 🛠️ Listando Capabilities 🛠️ =========================\033[0m"
sleep 0.5
getcap -r / 2>/dev/null

echo -e "\n"
sleep 1

# Listando tareas cron
echo -e "\033[1;36m========================= ⏰ Listando Tareas Cron ⏰ =========================\033[0m"
sleep 0.5
cat /etc/crontab 2>/dev/null

echo -e "\n"
sleep 1

# Listando interfaces de red
echo -e "\033[1;36m========================= 🌐 Listando Interfaces de Red 🌐 =========================\033[0m"
sleep 0.5
ifconfig 2>/dev/null

echo -e "\n"
sleep 1

# Listando puertos abiertos del sistema
echo -e "\033[1;34m========================= 🌐 Listando Puertos Abiertos del Sistema 🌐 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listando Servicios TCP.\033[0m"
sleep 0.5
ss -tunlp | grep "tcp" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m1: Listando Servicios UDP.\033[0m"
sleep 0.5
ss -tunlp | grep "udp" 2>/dev/null

echo -e "\n"
sleep 1

# Listando el /proc/net
echo -e "\033[1;36m========================= 🌐 Listando el Directorio /proc/net 🌐 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m4: Listando Protocolo TCP.\033[0m"
sleep 0.5
cat /proc/net/tcp 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m4: Listando Protocolo UDP.\033[0m"
sleep 0.5
cat /proc/net/udp 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m5: Listando IPv6.\033[0m"
sleep 0.5
cat /proc/net/if_inet6 2>/dev/null

echo -e "\n"
sleep 1

# Listando el .htaccess y .htpasswd
echo -e "\033[1;32m========================= 🖥️ Listando el .htaccess y .htpasswd 🖥️ =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listando .htaccess.\033[0m"
sleep 0.5
find / -name ".htaccess" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Listando .htpasswd.\033[0m"
sleep 0.5
find / -name ".htpasswd" 2>/dev/null

echo -e "\n"

# Listando los archivos importantes de Apache
echo -e "\033[1;32m========================= 🐘 Listando los Archivos Importantes de Apache 🐘 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listando el Archivo de Configuración Principal de Apache.\033[0m"
sleep 0.5
cat /etc/apache2/apache2.conf 2>/dev/null || true

echo -e "\n"

echo -e "\033[1;33m2: Listando el Archivo de Configuración para un Sitio Virtual Predeterminado de Apache.\033[0m"
sleep 0.5
cat /etc/apache2/sites-available/000-default.conf 2>/dev/null || true

echo -e "\n"

echo -e "\033[1;33m3: Listando el Archivo de Configuración para un Sitio Virtual con Soporte para HTTPS.\033[0m"
sleep 0.5
cat /etc/apache2/sites-available/default-ssl.conf 2>/dev/null || true

echo -e "\n"
sleep 1

# Listando los archivos importantes de Nginx
echo -e "\033[1;32m========================= 🌍 Listando los Archivos Importantes de Nginx 🌍 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listando el Archivo de Configuración Principal de Nginx.\033[0m"
sleep 0.5
cat /etc/nginx/nginx.conf 2>/dev/null || true

echo -e "\n"

echo -e "\033[1;33m2: Listando el Archivo de Configuración para un Servidor Virtual Predeterminado de Nginx.\033[0m"
sleep 0.5
cat /etc/nginx/sites-available/default 2>/dev/null || true

echo -e "\n"

echo -e "\033[1;33m3: Listando el Archivo de Configuración para un Servidor Virtual con Soporte para HTTPS.\033[0m"
sleep 0.5
cat /etc/nginx/sites-available/default-ssl 2>/dev/null || true

echo -e "\n"
sleep 1

# Listando directorio /tmp
echo -e "\033[1;32m========================= 🗑️ Listando Archivos en /tmp 🗑️ =========================\033[0m"
sleep 0.5
ls -la /tmp 2>/dev/null

echo -e "\n"
sleep 1

# Listando el directorio /root
echo -e "\033[1;31m========================= 👨‍💼 Listando el Directorio /root 👨‍💼 =========================\033[0m"
sleep 0.5
ls -la /root 2>/dev/null

echo -e "\n"
sleep 1

# Listando el directorio /opt
echo -e "\033[1;34m========================= 📦 Listando el Directorio /opt 📦 =========================\033[0m"
sleep 0.5
ls -la /opt 2>/dev/null

echo -e "\n"
sleep 1

# Listando el directorio /mnt
echo -e "\033[1;33m========================= 🛠️ Listando el Directorio /mnt 🛠️ =========================\033[0m"
sleep 0.5
ls -la /mnt 2>/dev/null

echo -e "\n"
sleep 1

# Listando el directorio /var/backups
echo -e "\033[1;31m========================= 💾 Listando el Directorio /var/backups 💾 =========================\033[0m"
sleep 0.5
ls -la /var/backups 2>/dev/null

echo -e "\n"
sleep 1

# Listando el directorio /var/opt
echo -e "\033[1;36m========================= 📂 Listando el Directorio /var/opt 📂 =========================\033[0m"
sleep 0.5
ls -la /var/opt 2>/dev/null

echo -e "\n"
sleep 1

# Listando el directorio /var/mail
echo -e "\033[1;35m========================= 📧 Listando el Directorio /var/mail 📧 =========================\033[0m"
sleep 0.5
ls -la /var/mail 2>/dev/null

echo -e "\n"
sleep 1

# Listando el directorio /var/www
echo -e "\033[1;32m========================= 🌐 Listando el Directorio /var/www 🌐 =========================\033[0m"
sleep 0.5
ls -la /var/www/ 2>/dev/null

echo -e "\n"
sleep 1
