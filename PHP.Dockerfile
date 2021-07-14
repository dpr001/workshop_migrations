FROM php:fpm


RUN apt-get update && apt-get install -y \
      libicu-dev \
      libpq-dev \
      libmcrypt-dev \
      git \
      zip \
      unzip \
    && rm -r /var/lib/apt/lists/*

RUN docker-php-ext-install pdo pdo_pgsql intl

RUN pecl install xdebug && docker-php-ext-enable xdebug

