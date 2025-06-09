#!/bin/bash

# Quickly applying variables to create the clear
export TERM=xterm
export SHELL=bash
clear

# Banner
typewriter() {
  text=$1
  for ((i=0; i<${#text}; i++)); do
    echo -n "${text:$i:1}"
    sleep 0.001  # Almost instantaneous delay (1 millisecond)
  done
  echo
}

clear
echo -ne "\033[1;32m"  # -ne to prevent line breaks
typewriter "██████╗  █████╗ ████████╗██╗  ██╗████████╗██████╗  █████╗  ██████╗███████╗"
typewriter "██╔══██╗██╔══██╗╚══██╔══╝██║  ██║╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██╔════╝"
typewriter "██████╔╝███████║   ██║   ███████║   ██║   ██████╔╝███████║██║     █████╗  "
typewriter "██╔═══╝ ██╔══██║   ██║   ██╔══██║   ██║   ██╔══██╗██╔══██║██║     ██╔══╝  "
typewriter "██║     ██║  ██║   ██║   ██║  ██║   ██║   ██║  ██║██║  ██║╚██████╗███████╗"
typewriter "╚═╝     ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚══════╝"
echo -e "\n\033[1;33m                       by MatthyGD\033[0m"
echo -e "\n\033[1;33m                                             Enumeration Linux Tool\033[0m"
echo -e "\033[1;34m=======================================================================================\033[0m"

echo -e "\n"

# Optimizing terminal
echo -e "\033[1;32m========================= 🌱 Optimizing Terminal 🌱 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Setting TERM variable for better compatibility.\033[0m"
sleep 0.5
export TERM=xterm
echo -e "\033[1;33m2: Configuring default shell to Bash.\033[0m"
sleep 0.5
export SHELL=bash
echo -e "\033[1;33m3: Enabling color support in terminal.\033[0m"
sleep 0.5
export TERM=xterm-256color
echo -e "\033[1;33m4: Applying Bash configuration changes.\033[0m"
sleep 0.5
source /etc/skel/.bashrc
echo -e "\033[1;33m5: Adjusting columns and rows size for better display.\033[0m"
sleep 0.5
stty rows 61 columns 229

echo -e "\n"
sleep 1

# System Recognition
echo -e "\033[1;32m========================= 🖥️ System Recognition 🖥️ =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Checking operating system distribution.\033[0m"
sleep 0.5
lsb_release -d | cut -f2- 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Checking kernel version.\033[0m"
sleep 0.5
uname -r 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m3: Checking Bash version.\033[0m"
sleep 0.5
/bin/bash --version | grep -oP '\d+\.\d+\.\d+' 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m4: Checking Sudo version.\033[0m"
sleep 0.5
sudo -V | grep -i "sudo" | head -n 1 | awk '{print $3}' 2>/dev/null

echo -e "\n"
sleep 1

# Listing system process
echo -e "\033[1;32m========================= 💻 Listing System Process 💻 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Checking System Process.\033[0m"
sleep 0.5
ps -faux

echo -e "\n"
sleep 1

# Listing sensitive files
echo -e "\033[1;31m========================= 🚨 Listing Sensitive Files 🚨 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Checking /etc/passwd permissions.\033[0m"
sleep 0.5
ls -l /etc/passwd 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Checking /etc/shadow permissions.\033[0m"
sleep 0.5
ls -l /etc/shadow 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m3: Checking /etc/group permissions.\033[0m"
sleep 0.5
ls -l /etc/group 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m4: Checking /etc/sudoers permissions.\033[0m"
sleep 0.5
ls -l /etc/sudoers 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m5: Checking /etc/crontab permissions.\033[0m"
sleep 0.5
ls -l /etc/crontab 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m6: Checking /boot/grub/grub.cfg permissions.\033[0m"
sleep 0.5
ls -l /boot/grub/grub.cfg 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m6: Checking /etc/ssh/sshd_config permissions.\033[0m"
sleep 0.5
ls -l /etc/ssh/sshd_config 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m7: Checking /proc/sched_debug permissions.\033[0m"
sleep 0.5
ls -l /proc/sched_debug/ 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m8: Checking /usr/share/ssl-cert permissions.\033[0m"
sleep 0.5
ls -l /usr/share/ssl-cert/ 2>/dev/null

echo -e "\n"
sleep 1

# Listing AppArmor directory
echo -e "\033[1;32m========================= � Listing AppArmor directory 🛡️ =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Checking /etc/apparmor.d\033[0m"
sleep 0.5
ls -l /etc/apparmor.d 2>/dev/null

echo -e "\n"
sleep 1

# Listing home directory and users
echo -e "\033[1;32m========================= � Listing Home Directory and Users 🏠 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Valid system users.\033[0m"
sleep 0.5
cat /etc/passwd | grep "bash" 2>/dev/null
cat /etc/passwd | grep "zsh" 2>/dev/null
cat /etc/passwd | grep "\bash\b" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Home directory.\033[0m"
sleep 0.5
ls -la /home/ 2>/dev/null

echo -e "\n"
sleep 1

# Listing user history
echo -e "\033[1;32m========================= 📝 Listing User History & Variables 📝 =========================\033[0m"
sleep 0.5
history 2>/dev/null
env 2>/dev/null
alias 2>/dev/null

echo -e "\n"
sleep 1

# Listing user information
echo -e "\033[1;34m========================= 👤 Listing User Information 👤 =========================\033[0m"
sleep 0.5
id 2>/dev/null

echo -e "\n"

echo -e "\033[1;34m========================= 📜 Press Ctrl + C if you don't know the credentials 📜 =========================\033[0m"
sleep 0.5
sudo -l 2>/dev/null

echo -e "\n"
sleep 1

# Listing SSH keys
echo -e "\033[1;31m========================= 🔐 Listing SSH Keys 🔐 =========================\033[0m"
sleep 0.5
find / -name "id_rsa" 2>/dev/null
find / -name "id_rsa.pub" 2>/dev/null
find / -name "authorized_keys" 2>/dev/null

echo -e "\n"
sleep 1

# Listing possible compressed files
echo -e "\033[1;31m========================= 📚 Listing Compressed Files 📚 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listing files with Zip extension.\033[0m"
sleep 0.5
find / -name "*.zip" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Listing files with Rar extension.\033[0m"
sleep 0.5
find / -name "*.rar" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m3: Listing files with 7z extension.\033[0m"
sleep 0.5
find / -name "*.7z" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m4: Listing files with Tar extension.\033[0m"
sleep 0.5
find / -name "*.tar" 2>/dev/null

echo -e "\n"
sleep 1

# Listing possible backup files
echo -e "\033[1;31m========================= 💾 Listing Backup Files 💾 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listing files with Bak extension.\033[0m"
sleep 0.5
find / -name "*.bak" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Listing files with Old extension.\033[0m"
sleep 0.5
find / -name "*.old" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m3: Listing files containing 'backup' in name.\033[0m"
sleep 0.5
find / -name "*backup*" 2>/dev/null

echo -e "\n"
sleep 1

# Listing possible database files
echo -e "\033[1;31m========================= 🗄️ Listing Database Files 🗄️ =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listing database configuration files.\033[0m"
sleep 0.5
find / -name "*config.php" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Listing MYSQL database files.\033[0m"
sleep 0.5
find / -name "*.sql" 2>/dev/null
find / -name "*.db" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m3: Listing SQLite3 database files.\033[0m"
sleep 0.5
find / -name "*.sqlite3" 2>/dev/null

echo -e "\n"
sleep 1

# Listing possible Content Management Systems
echo -e "\033[1;31m========================= 🗄️ Listing Content Management Systems 🗄️ =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listing Wordpress.\033[0m"
sleep 0.5
find / -name "config-default.php" 2>/dev/null
find / -name "wp-config.php" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Listing Drupal.\033[0m"
sleep 0.5
find / -name "settings.php" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m3: Listing Jenkins.\033[0m"
sleep 0.5
find / -name "users.xml" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m4: Listing Tomcat.\033[0m"
sleep 0.5
find / -name "tomcat-users.xml" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m5: Listing Webmin.\033[0m"
sleep 0.5
find / -name "miniserv.users" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m6: Listing Dolibarr.\033[0m"
sleep 0.5
find / -name "conf.php" 2>/dev/null

echo -e "\n"
sleep 1

# Listing possible Password Managers
echo -e "\033[1;31m========================= 🔐 Listing Password Managers 🔐 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listing KeePass files.\033[0m"
sleep 0.5
find / -name "*.kdbx" 2>/dev/null
find / -name "*.kdb" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Listing Password Safe files.\033[0m"
sleep 0.5
find / -name "*.psafe3" 2>/dev/null

echo -e "\n"
sleep 1

# Listing possible Firefox sensitive files
echo -e "\033[1;31m========================= 🦊 Listing Firefox Sensitive Files 🦊 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listing Firefox key4.db files.\033[0m"
sleep 0.5
find / -name "key4.db" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Listing Firefox logins.json files.\033[0m"
sleep 0.5
find / -name "logins.json" 2>/dev/null

echo -e "\n"
sleep 1

# Listing SUID binaries
echo -e "\033[1;33m========================= 🔧 Listing SUID Binaries 🔧 =========================\033[0m"
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

# Listing Capabilities
echo -e "\033[1;35m========================= 🛠️ Listing Capabilities 🛠️ =========================\033[0m"
sleep 0.5
getcap -r / 2>/dev/null

echo -e "\n"
sleep 1

# Listing cron jobs
echo -e "\033[1;36m========================= ⏰ Listing Cron Jobs ⏰ =========================\033[0m"
sleep 0.5
cat /etc/crontab 2>/dev/null

echo -e "\n"
sleep 1

# Listing network interfaces
echo -e "\033[1;36m========================= 🌐 Listing Network Interfaces 🌐 =========================\033[0m"
sleep 0.5
ifconfig 2>/dev/null

echo -e "\n"
sleep 1

# Listing open system ports
echo -e "\033[1;34m========================= 🌐 Listing Open System Ports 🌐 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listing TCP services.\033[0m"
sleep 0.5
ss -tunlp | grep "tcp" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m1: Listing UDP services.\033[0m"
sleep 0.5
ss -tunlp | grep "udp" 2>/dev/null

echo -e "\n"
sleep 1

# Listing /proc/net
echo -e "\033[1;36m========================= 🌐 Listing /proc/net Directory 🌐 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m4: Listing TCP protocol.\033[0m"
sleep 0.5
cat /proc/net/tcp 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m4: Listing UDP protocol.\033[0m"
sleep 0.5
cat /proc/net/udp 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m5: Listing IPv6.\033[0m"
sleep 0.5
cat /proc/net/if_inet6 2>/dev/null

echo -e "\n"
sleep 1

# Listing .htaccess and .htpasswd
echo -e "\033[1;32m========================= 🖥️ Listing .htaccess and .htpasswd 🖥️ =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listing .htaccess.\033[0m"
sleep 0.5
find / -name ".htaccess" 2>/dev/null

echo -e "\n"

echo -e "\033[1;33m2: Listing .htpasswd.\033[0m"
sleep 0.5
find / -name ".htpasswd" 2>/dev/null

echo -e "\n"

# Listing important Apache files
echo -e "\033[1;32m========================= 🐘 Listing Important Apache Files 🐘 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listing main Apache configuration file.\033[0m"
sleep 0.5
cat /etc/apache2/apache2.conf 2>/dev/null || true

echo -e "\n"

echo -e "\033[1;33m2: Listing default virtual site configuration file.\033[0m"
sleep 0.5
cat /etc/apache2/sites-available/000-default.conf 2>/dev/null || true

echo -e "\n"

echo -e "\033[1;33m3: Listing HTTPS virtual site configuration file.\033[0m"
sleep 0.5
cat /etc/apache2/sites-available/default-ssl.conf 2>/dev/null || true

echo -e "\n"
sleep 1

# Listing important Nginx files
echo -e "\033[1;32m========================= 🌍 Listing Important Nginx Files 🌍 =========================\033[0m"
sleep 0.5
echo -e "\033[1;33m1: Listing main Nginx configuration file.\033[0m"
sleep 0.5
cat /etc/nginx/nginx.conf 2>/dev/null || true

echo -e "\n"

echo -e "\033[1;33m2: Listing default virtual server configuration file.\033[0m"
sleep 0.5
cat /etc/nginx/sites-available/default 2>/dev/null || true

echo -e "\n"

echo -e "\033[1;33m3: Listing HTTPS virtual server configuration file.\033[0m"
sleep 0.5
cat /etc/nginx/sites-available/default-ssl 2>/dev/null || true

echo -e "\n"
sleep 1

# Listing /tmp directory
echo -e "\033[1;32m========================= 🗑️ Listing /tmp Directory Files 🗑️ =========================\033[0m"
sleep 0.5
ls -la /tmp 2>/dev/null

echo -e "\n"
sleep 1

# Listing /root directory
echo -e "\033[1;31m========================= 👨‍💼 Listing /root Directory 👨‍💼 =========================\033[0m"
sleep 0.5
ls -la /root 2>/dev/null

echo -e "\n"
sleep 1

# Listing /opt directory
echo -e "\033[1;34m========================= 📦 Listing /opt Directory 📦 =========================\033[0m"
sleep 0.5
ls -la /opt 2>/dev/null

echo -e "\n"
sleep 1

# Listing /mnt directory
echo -e "\033[1;33m========================= 🛠️ Listing /mnt Directory 🛠️ =========================\033[0m"
sleep 0.5
ls -la /mnt 2>/dev/null

echo -e "\n"
sleep 1

# Listing /var/backups directory
echo -e "\033[1;31m========================= 💾 Listing /var/backups Directory 💾 =========================\033[0m"
sleep 0.5
ls -la /var/backups 2>/dev/null

echo -e "\n"
sleep 1

# Listing /var/opt directory
echo -e "\033[1;36m========================= 📂 Listing /var/opt Directory 📂 =========================\033[0m"
sleep 0.5
ls -la /var/opt 2>/dev/null

echo -e "\n"
sleep 1

# Listing /var/mail directory
echo -e "\033[1;35m========================= 📧 Listing /var/mail Directory 📧 =========================\033[0m"
sleep 0.5
ls -la /var/mail 2>/dev/null

echo -e "\n"
sleep 1

# Listing /var/www directory
echo -e "\033[1;32m========================= 🌐 Listing /var/www Directory 🌐 =========================\033[0m"
sleep 0.5
ls -la /var/www/ 2>/dev/null

echo -e "\n"
sleep 1
