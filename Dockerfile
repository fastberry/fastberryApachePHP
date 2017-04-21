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
    php5 \
    libapache2-mod-php5

# install mysql
#RUN apt-get -y update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
#    php5-mysql \
#    mysql-server \
#    mysql-client

# set DEBIAN_FRONTEND to supress prompt for root password and install mysql-server
#RUN export DEBIAN_FRONTEND=noninteractive && apt-get -q -y install mysql-server

# now set the mysql root password
#RUN mysqladmin -u root password fastberry

# pre-populate the html directory
COPY src/index.html /var/www/html/
COPY src/index.php /var/www/html/

# start and run apache in the foreground
CMD /usr/sbin/apache2ctl -D FOREGROUND

