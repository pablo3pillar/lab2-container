#!/bin/bash

# Construye la imagen del contenedor
docker build -t coffewebsite .

# Ejecuta el contenedor, mapeando el puerto 8080 del host al puerto 80 del contenedor
docker run -d -p 8080:80 --name coffewebsite-container coffewebsite

# Ejecuta un contenedor MySQL y lo vincula con el contenedor del sitio web
docker run --name mysql-container -e MYSQL_ROOT_PASSWORD=mysql-pw --link coffewebsitewebsite-container:mysql -d mysql:5.7

