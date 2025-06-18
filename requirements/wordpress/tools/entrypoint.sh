#! /bin/bash

#set -x
#dnzita
cd /var/www/html
wp_passrod=$(cat "$WP_ADMIN_PASSWORD")
db_passrod=$(cat "$DB_MYSQL_PASSWORD")
wp_user_password=$(cat "$WP_USER_PASSWORD")
wp core download --allow-root
wp config create \
--dbname="$MYSQL_DATABASE" \
--dbuser="$MYSQL_USER" \
--dbpass="$db_passrod" \
--dbhost="mariadb" \
--allow-root
wp core install \
	--url="$WP_URL" \
	--title="$WP_TITLE" \
	--admin_user="$WP_ADMIN" \
	--admin_password="$wp_passrod" \
	--admin_email="$WP_ADMIN_EMAIL" \
	--allow-root
wp user create "$WP_USER" "$WP_USER_EMAIL" \
  --role=subscriber \
  --user_pass="$wp_user_password" \
  --allow-root

echo "configuracao completa"
exec "$@"
	
