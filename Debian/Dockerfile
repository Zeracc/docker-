FROM debian:latest

RUN apt-get update && apt-get install -y \
    net-tools \
    mc \ 
    ssh \
    lynx \
    apache2

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN echo "root:seu_password_ssh" | chpasswd

EXPOSE 22 80

CMD service ssh start && apache2ctl -D FOREGROUND


