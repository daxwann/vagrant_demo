# Update ubuntu packages
apt-get update

# Upgrade ubuntu packages
apt-get upgrade

# Install git version control
apt-get install -y git

# Install apache web server
apt-get install -y apache2

# Enable Apache mods
a2enmod rewrite

# Enabling Ondrej PHP repository
apt-get install -y software-properties-common
apt-add-repository ppa:ondrej/php
apt-get update

# Install php and php apache mods
apt-get install -y php7.3 libapache2-mod-php7.3

# Restart Apache
service apache2 restart

# PHP Mods
apt-get install -y php7.3-common
apt-get install -y php7.3-ncrypt
apt-get install -y php7.3-zip

# Set MySQL Pass
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Install MySQL
apt-get install -y mysql-server

# PHP-MySQL lib
apt-get install -y php7.3-mysql

# Restart Apache
service apache2 restart

