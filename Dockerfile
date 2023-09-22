FROM phpmyadmin:5.2.1-apache
USER root
RUN chown -R www-data:www-data /var/www/html/
FROM mariadb:lts-jammy
ENV MARIADB_ROOT_PASSWORD=!@#$Iam$ravan
ENV MARIADB_DATABASE=HomeNetworkMonitor
EXPOSE 3306
EXPOSE 8080:80 443

