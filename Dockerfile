FROM nginx

RUN rm -rf /usr/share/nginx/html/*


COPY . /user/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]