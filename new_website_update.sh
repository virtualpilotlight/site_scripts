#!/bin/bash
apt-get update && apt-get upgrade
rm -rf /var/www/new_website
git clone https://github.com/virtualpilotlight/new_website.git /var/www/new_website
chmod 755 -R /var/www 
systemctl reload apache2