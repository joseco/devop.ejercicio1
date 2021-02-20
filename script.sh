#!/bin/sh
printf "Bienvenidos a mi servidor\n" > /etc/motd
sudo touch /etc/miaplicacion.conf
sudo sh -c 'printf "miaplicacion.db.ip=192.168.10.12\nmiaplicacion.db.usuario=juancho \nmiaplicacion.db.puerto=5432" > /etc/miaplicacion.conf'
 sudo useradd -u 12345 -g users -d /home/uagrm -s /bin/bash -p '$1$0W/Lmial$KaCSG.yyoX2dtHwINgiBc/' uagrm   
sudo yum -y install ntp
sudo sh -c 'printf "server 0.south-america.pool.ntp.org\nserver 1.south-america.pool.ntp.org\nserver 2.south-america.pool.ntp.org\nserver 3.south-america.pool.ntp.org\nlogfile /var/log/ntp.log" > /etc/ntp.conf'
sudo systemctl start ntpd