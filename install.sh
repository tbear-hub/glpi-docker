#!/bin/bash

APACHE_DIR="/var/www/html"
GLPI_DIR="($APACHE_DIR)/glpi"
GLPI_SOURCE_URL=${GLPI_SOURCE_URL:-"https://github.com/glpi-project/glpi/releases/download/9.5.0-rc1/glpi-9.5.0-rc1.tgz"}

wget -O /tmp/glpi.tar.gz $GLPI_SOURCE_URL
tar -C $APACHE_DIR -xzf /tmp/glpi.tar.gz
chown -R www-data $GLPI_DIR
