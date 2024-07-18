# Menggunakan image PHP dengan Apache
FROM php:7.4-apache

# Install dependencies
RUN apt-get update && apt-get install -y libssl-dev

# Copy application files
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html

# Install PHP extensions
RUN docker-php-ext-install mysqli mbstring

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Configure Apache
COPY .htaccess /var/www/html/.htaccess

# Expose port 80
EXPOSE 80

CMD ["apache2-foreground"]
