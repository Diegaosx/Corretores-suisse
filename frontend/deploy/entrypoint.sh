#!/bin/sh
set -e
export PORT="${PORT:-80}"
echo "==> Iniciando Nginx do Painel Angular na porta $PORT..."
envsubst '${PORT}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf
exec nginx -g "daemon off;"
