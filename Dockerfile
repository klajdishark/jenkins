FROM php:7-2-fpm
RUN apk add --no-cache \
        zlib-dev \
        libxml2-dev \
    && docker-php-ext-install \
        pdo_mysql \
        soap \
        zip
COPY ./Application /var/www/html
WORKDIR /var/www/html
