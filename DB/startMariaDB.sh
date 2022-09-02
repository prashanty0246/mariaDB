#!/bin/sh

echo '----------Removing Existing MariaDB Image----------'
docker rmi -f mariadb:10.7
sleep 5

echo '----------Removing Existing MariaDB Container----------'
docker rm -f mdb
sleep 5

echo '----------Build MariaDB Image----------' 
docker build -t mariadb:10.7 .
sleep 5

echo '----------Run MariaDB Container----------' 
docker run -p 127.0.0.1:3306:3306  --name mdb -e MARIADB_ROOT_PASSWORD=Password123! -d mariadb:10.7 
sleep 5
echo '-----------MariaDB Migration Done---------------'