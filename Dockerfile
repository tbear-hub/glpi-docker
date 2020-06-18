FROM debian:latest

RUN apt-get updta && apt-get install -yq php \
	php-curl \
	php-gd \
	php-imagick \
	php-intl \
	php-apcu \
	php-recode \
	php-memcache \
	php-imap \
	php-mysql \
	php-cas \
	php-ldap \
	php-tidy \
	php-pear \
	php-xmlrpc \
	php-pspell \
	php-gettext \
	php-mbstring \
	php-json \
	php-iconv \
	php-xml \
	php-gd \
	php-xsl \
	apache2 \
	libapache2-mod-php \
	wget

WORKDIR /var/www/html
COPY install.sh /opt/
RUN chmod +x /opt/install.sh
RUN usermod -u 1000 www-data
CMD /opt/install.sh
EXPOSE 80
