FROM php:8.3-fpm

# Install useful tools
RUN apt-get update && apt-get -y install apt-utils vim \
apt-utils \
build-essential \
curl

# Install composer
RUN echo "\e[1;33mInstall COMPOSER\e[0m"
RUN cd /tmp \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer