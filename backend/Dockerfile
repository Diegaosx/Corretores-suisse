FROM php:8.2-fpm-alpine

# Instalar dependências de sistema e extensões necessárias para o Laravel
RUN apk update && apk add --no-cache \
    nginx \
    curl \
    libpng-dev \
    libjpeg-turbo-dev \
    freetype-dev \
    libzip-dev \
    zip \
    unzip \
    git \
    oniguruma-dev \
    mysql-client \
    bash \
    supervisor \
    gettext

# Configurar e instalar extensões PHP para MySQL e manipulação de dados
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) \
        pdo \
        pdo_mysql \
        mbstring \
        exif \
        pcntl \
        bcmath \
        gd \
        zip \
        opcache

# Instalar Composer oficial
COPY --from=composer:2.7 /usr/bin/composer /usr/bin/composer

# Diretório de trabalho
WORKDIR /var/www/html

# Copiar arquivos de dependência primeiro para aproveitar cache de build
COPY composer.json composer.lock ./

# Instalar dependências PHP
RUN composer install --no-dev --optimize-autoloader --no-interaction --no-scripts

# Copiar o restante da aplicação
COPY . .

# Executar scripts do Composer pós-cópia
RUN composer dump-autoload --optimize

# Configurar permissões para storage e bootstrap/cache
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache \
    && chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# Configuração do Nginx com suporte dinâmico à porta do Railway ($PORT)
RUN mkdir -p /run/nginx /etc/nginx/http.d
COPY docker/nginx.conf.template /etc/nginx/http.d/default.conf.template

# Configuração do Supervisor para gerenciar Nginx e PHP-FPM
COPY docker/supervisord.conf /etc/supervisord.conf

# Script de inicialização (startup) com injeção da porta do Railway e caches do Laravel
COPY docker/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Porta exposta (documentação Docker, Railway mapeia dinamicamente)
EXPOSE 80

CMD ["/usr/local/bin/entrypoint.sh"]
