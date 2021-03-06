#!/bin/bash

# go to root
cd

# download userlimit
wget https://raw.githubusercontent.com/ahsnet/debian/master/userlimit.sh
chmod +x userlimit.sh

# setup cron for userlimit
echo "* * * * * root /root/userlimit.sh" >> /etc/crontab
echo "* * * * * root sleep 5; /root/userlimit-debian.sh" >> /etc/crontab
echo "* * * * * root sleep 10; /root/userlimit-debian.sh" >> /etc/crontab
echo "* * * * * root sleep 15; /root/userlimit-debian.sh" >> /etc/crontab
echo "* * * * * root sleep 20; /root/userlimit-debian.sh" >> /etc/crontab
echo "* * * * * root sleep 25; /root/userlimit-debian.sh" >> /etc/crontab
echo "* * * * * root sleep 30; /root/userlimit-debian.sh" >> /etc/crontab
echo "* * * * * root sleep 35; /root/userlimit-debian.sh" >> /etc/crontab
echo "* * * * * root sleep 40; /root/userlimit-debian.sh" >> /etc/crontab
echo "* * * * * root sleep 45; /root/userlimit-debian.sh" >> /etc/crontab
echo "* * * * * root sleep 50; /root/userlimit-debian.sh" >> /etc/crontab
echo "* * * * * root sleep 55; /root/userlimit-debian.sh" >> /etc/crontab

service cron restart
