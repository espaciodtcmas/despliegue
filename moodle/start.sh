php-fpm &

cd /var/www/html/moodle
php -S 0.0.0.0:80 -t /var/www/html/moodle

tail -f /dev/null