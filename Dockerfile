FROM ubuntu:20.04
MAINTAINER Aleksey Yanovskiy <yanov-sky@mail.ru>

RUN apt-get update -y
RUN apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php
RUN apt-get install -y curl git zip unzip php php-xml php-zip php-mbstring

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
	php composer-setup.php --install-dir=bin --filename=composer --version=2.1.5 && \
    php -r "unlink('composer-setup.php');"

