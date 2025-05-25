FROM debian:bullseye

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install php-fpm -y &&\
    mkdir -p /run/php && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY www.conf /etc/php/7.4/fpm/pool.d/www.conf
EXPOSE 9000

CMD ["php-fpm7.4", "-F"]