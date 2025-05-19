# This is the Dockerfile for the project to biuld an image and later snip up the containers

FROM ubuntu:latest
RUN apt update && apt install nginx -y
RUN rm -rf /var/www/html/*
COPY . /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]