FROM php:8.3.13-fpm-alpine

RUN apk add --no-cache \
    libpng-dev \
    libjpeg-turbo-dev \
    libxml2-dev \
    libzip-dev \
    openssl-dev \
    libcurl \
    freetype-dev \
    icu-dev \
    oniguruma-dev \
    bash


COPY moodle-latest-405.tgz /var/www/html/moodle.tgz

RUN cd /var/www/html && \
    tar -xzf moodle.tgz && \
    rm moodle.tgz && \
    chown -R www-data:www-data /var/www/html/moodle && \
    chmod -R 755 /var/www/html/moodle

RUN mkdir -p /var/www/moodledata && \
    chown -R www-data:www-data /var/www/moodledata && \
    chmod -R 777 /var/www/moodledata


EXPOSE 80

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
