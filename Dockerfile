# Use an official Ubuntu image as a parent image
FROM ubuntu:latest

# Install necessary packages and set up non-interactive installation
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y mariadb-server mariadb-client phpmyadmin && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set environment variables for MariaDB
ENV MYSQL_ROOT_PASSWORD=!@#$Iam$ravan
ENV MYSQL_DATABASE=HomeNetworkMonitor

# Expose ports for MariaDB and PHPMyAdmin
EXPOSE 3306 80

# Start MariaDB and Apache2 (used by PHPMyAdmin)
CMD ["bash", "-c", "/etc/init.d/mysql start && /etc/init.d/apache2 start && tail -f /dev/null"]
