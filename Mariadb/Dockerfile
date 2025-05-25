FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install mariadb-server -y && mkdir -p /run/mysqld 

CMD [ "mysqld" ]