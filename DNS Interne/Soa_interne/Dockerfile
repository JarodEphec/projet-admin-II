FROM ubuntu:latest

RUN apt update && apt upgrade -y
RUN apt install bind9 bind9utils dnsutils net-tools nano -y 

COPY named.conf /etc/bind/named.conf
COPY db.intranet.m1-2.ephec-ti.be /etc/bind/db.intranet.m1-2.ephec-ti.be
COPY reverse.intranet /etc/bind/reverse.intranet

CMD ["named", "-c", "/etc/bind/named.conf", "-g"]