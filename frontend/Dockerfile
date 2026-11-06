# Stage 1: Build Angular application
FROM node:18-bullseye-slim AS builder
WORKDIR /app

# Aumentar memória para o build do Angular com Nebular
ENV NODE_OPTIONS="--max-old-space-size=4096"

COPY package.json package-lock.json ./

# Instalar dependências sem rodar scripts que falham antes do build
RUN npm install --legacy-peer-deps

COPY . .

# Build da aplicação Angular em modo de produção
RUN npm run build:prod

# Stage 2: Servidor Nginx Alpine
FROM nginx:alpine

# Copiar bundle compilado do Angular
COPY --from=builder /app/dist/ngx-admin /usr/share/nginx/html

# Configuração com injeção dinâmica de porta do Railway ($PORT)
COPY deploy/nginx.conf.template /etc/nginx/conf.d/default.conf.template
COPY deploy/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 80

CMD ["/usr/local/bin/entrypoint.sh"]
