FROM debian:12

RUN apt update
RUN apt install mini-httpd --no-install-recommends

CMD exec mini_httpd -p $PORT -D
