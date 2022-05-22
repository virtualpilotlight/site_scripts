#!/bin/bash
apt-get update && apt-get upgrade
apt-get install net-tools 
apt-get install apache2  
git clone https://github.com/virtualpilotlight/new_website.git /var/www/new_website
chmod 755 -R /var/www 
cp /var/www/new_website/virtualpilotlight.conf /etc/apache2/sites-available/virtualpilotlight.conf 
a2ensite virtualpilotlight.conf
systemctl reload apache2
a2dissite 000-default.conf
systemctl reload apache2