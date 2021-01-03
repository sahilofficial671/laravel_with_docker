FROM php:7.4-fpm-buster

ADD ./config/php/www.conf /usr/local/etc/php-fpm.d/www.conf

RUN groupadd --force -g 1000 laravel
# RUN groupadd --force -g laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
RUN useradd -ms /bin/bash --no-user-group -g laravel -u 1000 laravel
# RUN useradd -ms /bin/bash --no-user-group -g laravel -u 1337 laravel

RUN mkdir -p /var/www/html

RUN chown laravel:laravel /var/www/html

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql
