FROM nginx:latest
COPY --chown=nginx:nginx index.html /usr/share/nginx/html
RUN  touch /var/run/nginx.pid && \
     chown -R nginx:nginx /var/cache/nginx /var/run/nginx.pid
USER nginx
COPY --chown=nginx:nginx index.html /usr/share/nginx/html
EXPOSE 80
