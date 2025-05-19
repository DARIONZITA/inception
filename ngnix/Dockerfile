# Usa a imagem base do Debian (bullseye é uma versão estável)
FROM debian:bullseye

# Evita prompts interativos durante a instalação
ENV DEBIAN_FRONTEND=noninteractive

# Atualiza os pacotes e instala o nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Expõe a porta padrão do Nginx
EXPOSE 80

# Comando padrão para iniciar o Nginx em primeiro plano
CMD ["nginx", "-g", "daemon off;"]
