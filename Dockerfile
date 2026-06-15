FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    git \
    zip \
    libzip-dev \
    && docker-php-ext-install zip \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

WORKDIR /var/www/html