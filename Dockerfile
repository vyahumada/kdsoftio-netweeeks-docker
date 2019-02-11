# Image base
FROM nginx:latest

# Instalo Vim para edición del HTML
RUN apt-get update && apt-get install vim -y

# 
# Copio archivo HTML modificado - Documentación oficial https://hub.docker.com/_/nginx
COPY . /usr/share/nginx/html/

# Ejecuto comando por defecto
CMD ["nginx", "-g", "daemon off;"]