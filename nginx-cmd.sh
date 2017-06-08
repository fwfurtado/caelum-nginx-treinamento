#!/bin/bash

for file in /etc/nginx/conf.d/*.docker
do
    envsubst '$NGINX_HOST $NGINX_HTTPS_PORT' < $file > ${file/.docker/.conf}
done

nginx -g 'daemon off;' $@