
FROM mariadb:10.7

ADD /db.sql /docker-entrypoint-initdb.d
ADD /platform.sql /docker-entrypoint-initdb.d
ADD /bank.sql /docker-entrypoint-initdb.d

EXPOSE 3306