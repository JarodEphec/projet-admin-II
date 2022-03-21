FROM alpine:latest

RUN apk --update add bind bind-dnssec-tools

EXPOSE 53

VOLUME ["/etc/bind", "/var/lib/bind"]

CMD ["/usr/sbin/named", "-f", "-g"]