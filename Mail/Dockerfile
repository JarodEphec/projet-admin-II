# Choix image
FROM ubuntu:latest

# Installation des outils nécessaire
RUN apt update && apt upgrade -y
RUN apt install postfix postfix-mysql dovecot-core dovecot-imapd dovecot-pop3d dovecot-lmtpd dovecot-mysql -y 

# Copie des fichier de config dovecot
COPY dovecot/dovecot-sql.conf.ext /etc/dovecot/
COPY dovecot/dovecot.conf /etc/dovecot/
COPY dovecot/conf.d/10-auth.conf /etc/dovecot/conf.d/
COPY dovecot/conf.d/10-mail.conf /etc/dovecot/conf.d/
COPY dovecot/conf.d/10-master.conf /etc/dovecot/conf.d/
COPY dovecot/conf.d/auth-sql.conf.ext /etc/dovecot/conf.d/
RUN mkdir -p /var/mail/vhosts/m1-2.ephec-ti.be
RUN groupadd -g 5000 vmail
RUN useradd -g vmail -u 5000 vmail -d /var/mail
RUN chown -R vmail:vmail /var/mail
RUN chown -R vmail:dovecot /etc/dovecot
RUN chmod -R o-rwx /etc/dovecot

COPY postfix/main.cf /etc/postfix/
COPY postfix/master.cf /etc/postfix/
COPY postfix/mysql-virtual-alias-maps.cf /etc/postfix/mysql-virtual-alias-maps.cf
COPY postfix/mysql-virtual-email2email.cf /etc/postfix/mysql-virtual-email2email.cf
COPY postfix/mysql-virtual-mailbox-domains.cf /etc/postfix/mysql-virtual-mailbox-domains.cf
COPY postfix/mysql-virtual-mailbox-maps.cf /etc/postfix/mysql-virtual-mailbox-maps.cf
RUN chmod -R o-rwx /etc/postfix

# Les port choisi pour etre exposer 
EXPOSE 25/udp
EXPOSE 25/tcp


CMD ["service", "postfix", "restart"]
CMD ["service", "dovecot", "restart"]
 
