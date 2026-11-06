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
COPY <<'EOF' /etc/nginx/http.d/default.conf.template
server {
    listen ${PORT};
    server_name _;
    root /var/www/html/public;
    index index.php index.html;

    client_max_body_size 64M;

    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }

    location ~ \.php$ {
        fastcgi_pass 127.0.0.1:9000;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $realpath_root$fastcgi_script_name;
        include fastcgi_params;
        fastcgi_read_timeout 300;
    }

    location ~ /\.(?!well-known).* {
        deny all;
    }
}
EOF

# Configuração do Supervisor para gerenciar Nginx e PHP-FPM
COPY <<'EOF' /etc/supervisord.conf
[supervisord]
nodaemon=true
user=root
logfile=/var/log/supervisord.log
pidfile=/var/run/supervisord.pid

[program:php-fpm]
command=docker-php-entrypoint php-fpm
autostart=true
autorestart=true
stdout_logfile=/dev/stdout
stdout_logfile_maxbytes=0
stderr_logfile=/dev/stderr
stderr_logfile_maxbytes=0

[program:nginx]
command=nginx -g 'daemon off;'
autostart=true
autorestart=true
stdout_logfile=/dev/stdout
stdout_logfile_maxbytes=0
stderr_logfile=/dev/stderr
stderr_logfile_maxbytes=0
EOF

# Script de inicialização (startup) com injeção da porta do Railway e caches do Laravel
COPY <<'EOF' /usr/local/bin/entrypoint.sh
#!/bin/bash
set -e

# Configurar porta dinâmica do Railway (padrão 80 se PORT não estiver definida)
export PORT="${PORT:-80}"
echo "==> Iniciando Nginx na porta $PORT..."
envsubst '${PORT}' < /etc/nginx/http.d/default.conf.template > /etc/nginx/http.d/default.conf

# Criar storage link se não existir
if [ ! -L /var/www/html/public/storage ]; then
    php artisan storage:link || true
fi

# Otimizações de cache em produção
if [ -n "$APP_KEY" ]; then
    php artisan config:cache || true
    php artisan route:cache || true
fi

exec /usr/bin/supervisord -c /etc/supervisord.conf
EOF

RUN chmod +x /usr/local/bin/entrypoint.sh

# Porta exposta (documentação Docker, Railway mapeia dinamicamente)
EXPOSE 80

CMD ["/usr/local/bin/entrypoint.sh"]
