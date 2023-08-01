# Usa un contenedor base con PHP y Apache
FROM php:7.2-apache

# Copia la carpeta coffeWeb al directorio html de Apache en el contenedor
COPY coffeweb/html/ /var/www/html

# Habilita el módulo de reescritura de Apache
RUN a2enmod rewrite

# Cambia los permisos del directorio html de Apache
RUN chown -R www-data:www-data /var/www/html


