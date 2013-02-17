export DEBIAN_FRONTEND=noninteractive

apt-get install -y vim curl
apt-get install -y libapache2-mod-php5 php5-mysql
apt-get install -y mysql-server
mysqladmin -u root password root
apt-get install -y phpmyadmin

rm /etc/apache2/sites-enabled/*
cat > /etc/apache2/sites-enabled/pweb << "EOF"
<VirtualHost *:80>
    ServerAdmin webmaster@localhost

    DocumentRoot /var/www
    <Directory />
        Options FollowSymLinks
        AllowOverride None
    </Directory>
    <Directory /var/www/>
        Options Indexes FollowSymLinks MultiViews
        AllowOverride All
        Order allow,deny
        allow from all
    </Directory>

    Include /etc/phpmyadmin/apache.conf

    CustomLog ${APACHE_LOG_DIR}/access.log combined
    ErrorLog ${APACHE_LOG_DIR}/error.log
    LogLevel warn
</VirtualHost>
EOF

/etc/init.d/apache2 restart
