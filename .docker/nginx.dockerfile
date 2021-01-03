FROM nginx:stable

ADD ./config/nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./config/nginx/default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/html

RUN groupadd -g 1000 laravel
RUN useradd -ms /bin/bash --no-user-group -g laravel -u 1000 laravel
# RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

RUN chown laravel:laravel /var/www/html
