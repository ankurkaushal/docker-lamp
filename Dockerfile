FROM ubuntu:14.04

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -y apache2 mysql-server php5-mysql php5 libapache2-mod-php5 php5-mcrypt

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2

RUN mkdir -p $APACHE_RUN_DIR $APACHE_LOCK_DIR $APACHE_LOG_DIR

EXPOSE 80
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

