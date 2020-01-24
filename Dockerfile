FROM nginx:latest
env PORT=80

COPY assets/default.conf /etc/nginx/conf.d/default.conf
COPY assets/entrypoint.sh /entrypoint
RUN chmod +x /entrypoint

COPY site/ /usr/share/nginx/html

CMD ["/entrypoint"]
