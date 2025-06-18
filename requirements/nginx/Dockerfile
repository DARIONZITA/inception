# Usa a imagem base do Debian (bullseye é uma versão estável)
FROM debian:bullseye

# Atualiza os pacotes e instala o nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY conf/default /etc/nginx/sites-available/default
COPY conf/certs/  /etc/nginx/ssl/
# Expõe a porta padrão do Nginx
EXPOSE 443


# Comando padrão para iniciar o Nginx em primeiro plano
CMD ["nginx", "-g", "daemon off;"]
