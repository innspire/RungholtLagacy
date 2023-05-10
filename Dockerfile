FROM nginx:alpine
WORKDIR /usr/share/nginx/
COPY html .
COPY ./build/nginx.conf /etc/nginx/nginx.conf
RUN touch /var/run/nginx.pid
RUN mkdir -p /var/cache/nginx
RUN chown -R nginx:nginx /usr/share/nginx/html /var/run/nginx.pid /var/cache/nginx
USER nginx
EXPOSE 8080