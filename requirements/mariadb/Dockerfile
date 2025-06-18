FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install mariadb-server -y && mkdir -p /run/mysqld 

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/.

COPY tools/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"] 
CMD [ "mysqld" ]
