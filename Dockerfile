FROM php:8.2-apache

# Installer les extensions nécessaires pour MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Activer mod_rewrite pour Apache
RUN a2enmod rewrite

# Configuration Apache pour un projet PHP
COPY ./apache-config.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 80
