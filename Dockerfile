FROM arm64v8/php:5-apache
RUN apt-get install -y whois
ADD src/Final /var/www/html
RUN chmod -R 755 /var/www/html
RUN chmod 777 /var/www/html/user1.txt /var/www/html/user2.txt /var/www/html/comments.txt /var/www/html/management.txt
COPY php.ini /etc/php5/apache2/php.ini
