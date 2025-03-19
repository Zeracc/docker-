FROM nginx:latest

RUN apt-get update && apt-get install -y mc

COPY index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off,"]