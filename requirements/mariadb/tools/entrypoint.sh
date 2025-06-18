#! /bin/bash

mysql_install_db
db_passrod=$(cat "$DB_MYSQL_PASSWORD")
cat << EOF > /etc/mysql/init.sql
CREATE DATABASE ${MYSQL_DATABASE};
CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${db_passrod}';
GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF

exec "$@"
