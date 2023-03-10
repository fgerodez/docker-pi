#!/bin/ash

sed -i "$ a ssl_cert=</etc/letsencrypt/live/${HOSTNAME}/fullchain.pem" /etc/dovecot/dovecot.conf
sed -i "$ a ssl_key=</etc/letsencrypt/live/${HOSTNAME}/privkey.pem" /etc/dovecot/dovecot.conf

/usr/sbin/dovecot -F
