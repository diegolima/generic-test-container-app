#!/bin/sh
sed -i "s/LISTENPORT/${PORT}/g" /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"
