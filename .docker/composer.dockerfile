FROM composer:latest

RUN groupadd -g 1000 laravel
RUN useradd -ms /bin/bash --no-user-group -g laravel -u 1000 laravel
# RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

WORKDIR /var/www/html
