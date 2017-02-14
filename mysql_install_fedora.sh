#!/bin/sh
wget https://repo.mysql.com/mysql57-community-release-el7-9.noarch.rpm
chmod +x mysql57-community-release-el7-9.noarch.rpm
rpm -Uvh mysql57-community-release-el7-9.noarch.rpm
dnf repolist | grep mysql
dnf config-manager --set-enabled mysql80-community,mysql-tools-community
dnf install mysql-community-server
