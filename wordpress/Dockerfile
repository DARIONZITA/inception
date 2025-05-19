FROM debian:bullseye

RUN apt-get update && apt-get install php-fpm -y &&\
    apt-clean && \
    rm -rf /var/lib/apt/lists/*

    EXPOSE 9000

    CMD ["php-fpm7.4", "-F"]