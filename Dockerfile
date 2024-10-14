FROM debian:12

RUN apt update
RUN apt install mini-httpd --no-install-recommends -y
ADD index.html /var/www/html
ADD login.html /var/www/html

CMD exec mini_httpd -p $PORT -d /var/www/html -D
