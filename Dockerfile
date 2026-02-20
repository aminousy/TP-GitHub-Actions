FROM php:8.2-apache

COPY docker/apache/vhost.conf /etc/apache2/sites-available/000-default.conf

COPY src/ /var/www/html/

RUN a2enmod rewrite

EXPOSE 80