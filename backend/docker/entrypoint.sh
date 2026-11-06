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
