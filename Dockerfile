FROM nginx:1.13.0

COPY nginx-cmd.sh /root/nginx-cmd.sh

VOLUME /etc/nginc/ssl
VOLUME /etc/nginx/conf.d/
VOLUME /var/www/

EXPOSE 80 443

WORKDIR /root

ENTRYPOINT ["./nginx-cmd.sh"]