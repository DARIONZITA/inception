FROM debian:bullseye

RUN apt-get update && \
    apt-get install php-fpm -y &&\
    apt-get install curl -y && \
    apt-get install php-mysqli -y && \
    mkdir -p /run/php && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
#instalando wp-cli
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp
COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
EXPOSE 9000
COPY tools/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm7.4", "-F"]
