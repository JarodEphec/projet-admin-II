FROM php:7.2-apache
RUN docker-php-ext-install mysqli
RUN a2enmod rewrite && a2enmod ssl && a2enmod socache_shmcb
COPY ./server.crt /etc/ssl/certs/
COPY ./server.key /etc/ssl/private/
COPY ./public-html/ /var/www/html/
COPY ./default-ssl.conf /etc/apache2/sites-available/default-ssl.conf
COPY ./apache2.conf /etc/apache2/apache2.conf
RUN a2ensite default-ssl