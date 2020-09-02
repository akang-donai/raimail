#!/bin/bash

## iRedmail Armbian ##
cd /etc/apt/ 
wget https://raw.githubusercontent.com/akang-donai/raimail/master/sources.list
apt update && apt upgrade -y
sed -i 's/localhost tinkerboard/usagi.mizutech.id localhost/g' /etc/hosts
sed -i 's/tinkerboard/usagi.mizutech.id/g' /etc/hostname
echo "Asia/Jakarta" > /etc/timezone
dpkg-reconfigure -f noninteractive tzdata
reboot