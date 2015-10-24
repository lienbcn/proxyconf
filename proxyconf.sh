#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters. Usage example: $ sh proxyconf.sh 95.19.109.66"
fi

echo 'Installing squid3'
sudo apt-get install squid3
#Backup config file
sudo cp /etc/squid3/squid.conf /etc/squid3/squid.conf.original
sudo chmod a-w /etc/squid3/squid.conf.original

echo 'Setting configuration'
sudo echo "acl our_networks src $1/32\nhttp_access allow our_networks" | sudo cat - /etc/squid3/squid.conf > /etc/squid3/temp.conf && sudo mv /etc/squid3/temp.conf /etc/squid3/squid.conf

sudo service squid3 restart

myip=`wget http://ipinfo.io/ip -qO -`
echo "Proxy server listening at $myip:3128"
