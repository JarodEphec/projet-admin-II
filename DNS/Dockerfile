# Choix image
FROM ubuntu:latest

# Installation des outils nécessaire
RUN apt update && apt upgrade -y
RUN apt install bind9 bind9utils dnsutils net-tools -y 

# Copie des fichier de config
COPY named.conf /etc/bind/ 
COPY db.m1-2.ephec-ti.be /etc/bind/zones/db.m1-2.ephec-ti.be

# Les port choisi pour etre exposer 
EXPOSE 53/udp
EXPOSE 53/tcp


CMD ["named", "-c", "/etc/bind/named.conf", "-g"]
