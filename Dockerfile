FROM php:7.4-apache

# Copy your PHP application files into the container
COPY . /var/www/html/php

# Install MySQL client and PHP extensions for MySQL
RUN apt-get update && \
    apt-get install -y default-mysql-client && \
    docker-php-ext-install mysqli pdo pdo_mysql

# Expose the web server port
EXPOSE 80

# Start the Apache web server
CMD ["apache2-foreground"]
