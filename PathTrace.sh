#!/bin/bash

# Aplicando rápidamente las variables para poder crear el clear
export TERM=xterm
export SHELL=bash
clear

# Optimizando la terminal
echo -e "\033[1;32m========================= 🌱 Optimizando Terminal 🌱 =========================\033[0m"
sleep 1
echo -e "\033[1;33m1: Ajustando la variable TERM para una mejor compatibilidad.\033[0m"
sleep 1
export TERM=xterm
echo -e "\033[1;33m2: Configurando el shell predeterminado a Bash.\033[0m"
sleep 1
export SHELL=bash
echo -e "\033[1;33m3: Activando soporte de colores en la terminal.\033[0m"
sleep 1
export TERM=xterm-256color
echo -e "\033[1;33m4: Aplicando cambios a la configuración del Bash.\033[0m"
sleep 1
source /etc/skel/.bashrc
echo -e "\033[1;33m5: Ajustando el tamaño de las columnas y filas para mejor visualización.\033[0m"
sleep 1
stty rows 61 columns 229

echo -e "\n"
sleep 1

# Reconocimiento del Sistema
echo -e "\033[1;32m========================= 🖥️ Reconocimiento del Sistema 🖥️ =========================\033[0m"
sleep 1
lsb_release -a

echo -e "\n"
sleep 1

# Reconocimiento de la Version de la Bash
echo -e "\033[1;32m========================= 🐚 Reconocimiento de la Version de la Bash 🐚 =========================\033[0m"
sleep 1
/bin/bash --version | grep "release"

echo -e "\n"
sleep 1

# Reconocimiento de la Version del Sudo
echo -e "\033[1;32m========================= 🔑 Reconocimiento de la Version del Sudo 🔑 =========================\033[0m"
sleep 1
sudo -V | grep "version"

echo -e "\n"
sleep 1

# Listando archivos sensibles
echo -e "\033[1;31m========================= 🚨 Listando Archivos Sensibles 🚨 =========================\033[0m"
sleep 1
ls -la /etc/passwd
ls -la /etc/shadow
ls -la /etc/sudoers
ls -la /usr/share/ssl-cert/
ls -la /proc/sched_debug/
find / -name ".bashrc" -ls 2>/dev/null
find / -name ".bash_history" -ls 2>/dev/null
find / -name ".mysql_history" -ls 2>/dev/null
find / -name "user.txt" -ls 2>/dev/null
find / -name "root.txt" -ls 2>/dev/null

echo -e "\n"
sleep 1

# Listando el directorio home y usuarios
echo -e "\033[1;32m========================= 🏠 Listando el Directorio Home y Usuarios 🏠 =========================\033[0m"
echo -e "\033[1;33m1: Usuarios Válidos del sistema.\033[0m"
sleep 1
cat /etc/passwd | grep "/bin/bash"

echo -e "\n"
sleep 1

echo -e "\033[1;33m2: Directorio Home.\033[0m"
sleep 1
ls -la /home/

echo -e "\n"
sleep 1

# Listando historial del usuario
echo -e "\033[1;32m========================= 📝 Listando Historial & Variables del Usuario 📝 =========================\033[0m"
sleep 1
history
env
alias

echo -e "\n"
sleep 1

# Listando información del usuario
echo -e "\033[1;34m========================= 👤 Listando Información del Usuario 👤 =========================\033[0m"
sleep 1
id
echo -e "\n"
echo -e "\033[1;34m========================= 📜 Apreta Ctrl + C en caso de no conocer las credenciales 📜 =========================\033[0m"
sudo -l

echo -e "\n"
sleep 1

# Listando Llaves SSH
echo -e "\033[1;31m========================= 🔐 Listando Llaves SSH 🔐 =========================\033[0m"
sleep 1
find / -name "id_rsa" 2>/dev/null
find / -name "id_rsa.pub" 2>/dev/null
find / -name "authorized_keys" 2>/dev/null

echo -e "\n"
sleep 1

# Listando Posibles archivos Backup
echo -e "\033[1;31m========================= 💾 Listando Posibles Archivos Backup 💾 =========================\033[0m"
sleep 1
echo -e "\033[1;33m1: Listando Archivos con Extension Bak.\033[0m"
find / -name "*.bak" 2>/dev/null

echo -e "\n"
sleep 1

echo -e "\033[1;33m2: Listando Archivos con Extension Old.\033[0m"
sleep 1
find / -name "*.old" 2>/dev/null

echo -e "\n"
sleep 1

echo -e "\033[1;33m3: Listando Archivos que contemplen el nombre Backup.\033[0m"
sleep 1
find / -name "*backup*" 2>/dev/null

echo -e "\n"
sleep 1

# Listando Posibles archivos de Bases de Datos
echo -e "\033[1;31m========================= 🗄️ Listando Posibles Archivos de Bases de Datos 🗄️ =========================\033[0m"
sleep 1
echo -e "\033[1;33m1: Listando Archivos de Configuración de Bases de Datos.\033[0m"
find / -name "*config.php" 2>/dev/null

echo -e "\n"
sleep 1

echo -e "\033[1;33m2: Listando Archivos de Bases de Datos MYSQL.\033[0m"
sleep 1
find / -name "*.sql" 2>/dev/null
find / -name "*.db" 2>/dev/null

echo -e "\n"
sleep 1

echo -e "\033[1;33m3: Listando Archivos de Bases de Datos SQLite3.\033[0m"
sleep 1
find / -name "*.sqlite3" 2>/dev/null

echo -e "\n"
sleep 1

# Listando Posibles Gestores de Contraseñas
echo -e "\033[1;31m========================= 🔐 Listando Posibles Gestores de Contraseñas 🔐 =========================\033[0m"
sleep 1
echo -e "\033[1;33m1: Listando archivos de KeePass.\033[0m"
find / -name "*.kdbx" 2>/dev/null

echo -e "\n"
sleep 1

echo -e "\033[1;33m2: Listando archivos de Password Safe.\033[0m"
sleep 1
find / -name "*.psafe3" 2>/dev/null

echo -e "\n"
sleep 1

# Listando Posibles Archivos Sensibles de FireFox
echo -e "\033[1;31m========================= 🦊 Listando Posibles Archivos Sensibles de FireFox 🦊 =========================\033[0m"
sleep 1
echo -e "\033[1;33m1: Listando archivos Key4.db de Firefox.\033[0m"
find / -name "key4.db" 2>/dev/null

echo -e "\n"
sleep 1

echo -e "\033[1;33m2: Listando archivos Logins.json de Firefox.\033[0m"
sleep 1
find / -name "logins.json" 2>/dev/null

echo -e "\n"
sleep 1

# Listando binarios SUID
echo -e "\033[1;33m========================= 🔧 Listando Binarios SUID 🔧 =========================\033[0m"
sleep 1
echo -e "\033[1;33m1: SUID\033[0m"
find / -perm -4000 -ls 2>/dev/null

echo -e "\n"
sleep 1

echo -e "\033[1;33m2: GUID\033[0m"
sleep 1
find / -perm -2000 -ls 2>/dev/null

echo -e "\n"
sleep 1

# Listando Capabilities
echo -e "\033[1;35m========================= 🛠️ Listando Capabilities 🛠️ =========================\033[0m"
sleep 1
getcap -r / 2>/dev/null

echo -e "\n"
sleep 1

# Listando tareas cron
echo -e "\033[1;36m========================= ⏰ Listando Tareas Cron ⏰ =========================\033[0m"
sleep 1
cat /etc/crontab

echo -e "\n"
sleep 1

# Listando interfaces de red
echo -e "\033[1;36m========================= 🌐 Listando Interfaces de Red 🌐 =========================\033[0m"
sleep 1
ip a

echo -e "\n"
sleep 1

# Listando puertos abiertos del sistema
echo -e "\033[1;34m========================= 🌐 Listando Puertos Abiertos del Sistema 🌐 =========================\033[0m"
sleep 1
echo -e "\033[1;33m1: Listando Servicios TCP\033[0m"
ss -tunlp | grep "tcp"

echo -e "\n"
sleep 1

echo -e "\033[1;33m1: Listando Servicios UDP\033[0m"
sleep 1
ss -tunlp | grep "udp"

echo -e "\n"
sleep 1

# Listando el /proc/net
echo -e "\033[1;36m========================= 🌐 Listando el Directorio /proc/net 🌐 =========================\033[0m"
sleep 1
echo -e "\033[1;33m4: Listando Protocolo TCP.\033[0m"
cat /proc/net/tcp

echo -e "\n"
sleep 1

echo -e "\033[1;33m4: Listando Protocolo UDP.\033[0m"
sleep 1
cat /proc/net/udp

echo -e "\n"
sleep 1

echo -e "\033[1;33m5: Listando IPv6.\033[0m"
sleep 1
cat /proc/net/if_inet6

echo -e "\n"
sleep 1

# Listando los archivos importantes de Apache
echo -e "\033[1;32m========================= 🐘 Listando los Archivos Importantes de Apache 🐘 =========================\033[0m"
sleep 1
echo -e "\033[1;33m1: Listando el Archivo de Configuración Principal de Apache.\033[0m"
sleep 1
cat /etc/apache2/apache2.conf | grep -ivE "#"

echo -e "\n"
sleep 1

echo -e "\033[1;33m2: Listando el Archivo de Configuración para un Sitio Virtual Predeterminado de Apache.\033[0m"
sleep 1
cat /etc/apache2/sites-available/000-default.conf | grep -ivE "#"

echo -e "\n"
sleep 1

echo -e "\033[1;33m3: Listando el Archivo de Configuración para un Sitio Virtual con Soporte para HTTPS.\033[0m"
sleep 1
cat /etc/apache2/sites-available/default-ssl.conf | grep -ivE "#"

echo -e "\n"
sleep 1

# Listando los archivos importantes de Nginx
echo -e "\033[1;32m========================= 🌍 Listando los Archivos Importantes de Nginx 🌍 =========================\033[0m"
sleep 1

echo -e "\033[1;33m1: Listando el Archivo de Configuración Principal de Nginx.\033[0m"
sleep 1
cat /etc/nginx/nginx.conf | grep -ivE "#"

echo -e "\n"
sleep 1

echo -e "\033[1;33m2: Listando el Archivo de Configuración para un Servidor Virtual Predeterminado de Nginx.\033[0m"
sleep 1
cat /etc/nginx/sites-available/default | grep -ivE "#"

echo -e "\n"
sleep 1

echo -e "\033[1;33m3: Listando el Archivo de Configuración para un Servidor Virtual con Soporte para HTTPS.\033[0m"
sleep 1
cat /etc/nginx/sites-available/default-ssl | grep -ivE "#"

echo -e "\n"
sleep 1

# Listando el directorio /opt
echo -e "\033[1;34m========================= 📦 Listando el Directorio /opt 📦 =========================\033[0m"
sleep 1
ls -la /opt

echo -e "\n"
sleep 1

# Listando directorio /tmp
echo -e "\033[1;32m========================= 🗑️ Listando Archivos en /tmp 🗑️ =========================\033[0m"
sleep 1
ls -la /tmp

echo -e "\n"
sleep 1

# Listando el directorio /opt
echo -e "\033[1;34m========================= 📦 Listando el Directorio /opt 📦 =========================\033[0m"
sleep 1
ls -la /opt

echo -e "\n"
sleep 1

# Listando el directorio /mnt
echo -e "\033[1;33m========================= 🛠️ Listando el Directorio /mnt 🛠️ =========================\033[0m"
sleep 1
ls -la /mnt

echo -e "\n"
sleep 1

# Listando el directorio /var/backups
echo -e "\033[1;31m========================= 💾 Listando el Directorio /var/backups 💾 =========================\033[0m"
sleep 1
ls -la /var/backups

echo -e "\n"
sleep 1

# Listando el directorio /var/opt
echo -e "\033[1;36m========================= 📂 Listando el Directorio /var/opt 📂 =========================\033[0m"
sleep 1
ls -la /var/opt

echo -e "\n"
sleep 1

# Listando el directorio /var/mail
echo -e "\033[1;35m========================= 📧 Listando el Directorio /var/mail 📧 =========================\033[0m"
sleep 1
ls -la /var/mail

echo -e "\n"
sleep 1

# Listando el directorio /var/www
echo -e "\033[1;32m========================= 🌐 Listando el Directorio /var/www 🌐 =========================\033[0m"
sleep 1
ls -la /var/www/

echo -e "\n"
sleep 1
