#!/bin/bash

## iRedmail Armbian ##
cd /etc/apt/ && mv sources.list sources.list.bak && \
wget https://raw.githubusercontent.com/akang-donai/raimail/master/sources.list && \
apt update && apt upgrade -y && \
sed -i 's/localhost tinkerboard/usagi.mizutech.id localhost/g' /etc/hosts && \
sed -i 's/tinkerboard/usagi.mizutech.id/g' /etc/hostname && \
echo "Asia/Jakarta" > /etc/timezone && \
ln -fs /usr/share/zoneinfo/`cat /etc/timezone` /etc/localtime && \
dpkg-reconfigure -f noninteractive tzdata && \
reboot
