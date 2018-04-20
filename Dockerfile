FROM nginx:alpine

COPY ./proxy.conf /etc/nginx/conf.d/proxy.conf

CMD nginx -g "daemon off;"