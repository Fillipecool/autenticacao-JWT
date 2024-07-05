# Use a imagem oficial do PHP com Apache
FROM php:apache

# Atualize e instale dependências, incluindo extensões necessárias
RUN apt-get update \
    && apt-get install -y \
        git \
        libpq-dev \
        libzip-dev \
        unzip \
        libxml2-dev \
    && docker-php-ext-install pdo_mysql mysqli zip simplexml dom \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

# Instale o Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Habilita o módulo de reescrita do Apache
RUN a2enmod rewrite

# Define o diretório de trabalho
WORKDIR /var/www/html

# Copie os arquivos do aplicativo para o diretório do servidor web
COPY . /var/www/html

RUN COMPOSER_ALLOW_SUPERUSER=1 composer install
# Abre a porta 80 para o Apache
EXPOSE 80

# Comando padrão para iniciar o Apache
CMD ["apache2-foreground"]
