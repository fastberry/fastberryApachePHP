# start from the resin rpi-raspbian image
FROM resin/rpi-raspbian:latest


# install apache2, php and required library
RUN apt-get -y update && apt-get install -y \
    apt-utils

RUN apt-get -y install \
    apache2 \
    apache2-doc \
    apache2-utils \
    debconf-utils \
    libapache2-mod-php5 \
    php5

# pre-populate the html directory
COPY src/index.html /var/www/html/
COPY src/index.php /var/www/html/

# start and run apache in the foreground
CMD /usr/sbin/apache2ctl -D FOREGROUND

