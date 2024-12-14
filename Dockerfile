FROM nginx
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY build/ .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

