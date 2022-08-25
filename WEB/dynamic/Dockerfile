FROM php:7.2-apache
RUN docker-php-ext-install mysqli
RUN a2enmod rewrite && a2enmod ssl && a2enmod socache_shmcb
COPY . /var/www/html/
