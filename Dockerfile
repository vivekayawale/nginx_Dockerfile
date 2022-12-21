FROM nginx:latest
COPY --chown=nginx:nginx index.html /usr/share/nginx/html
EXPOSE 80
