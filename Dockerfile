FROM php:8.0-apache
USER root
COPY index.php /var/www/html/
RUN chown -R www-data:www-data /var/www/html/
EXPOSE 80
FROM mysql/mysql-server:8.0.24
COPY user.cnf /etc/mysql/my.cnf
EXPOSE 3306
