#!/bin/sh
wget https://repo.mysql.com/mysql57-community-release-el7-9.noarch.rpm
chmod +x mysql57-community-release-el7-9.noarch.rpm
rpm -Uvh mysql57-community-release-el7-9.noarch.rpm
yum repolist all | grep mysql
yum --enablerepo=mysql80-community,mysql-tools-community install mysql
yum install mysql-community-server