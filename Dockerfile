FROM nephatrine/base-alpine:latest
LABEL maintainer="Daniel Wolf <nephatrine@gmail.com>"

RUN echo "====== PREPARE BASIC UTILITIES ======" \
 && apk --update upgrade \
 && apk add mongodb openjdk8-jre \
 \
 && echo "====== INSTALL UNIFI ======" \
 && cd /usr/src && wget http://www.ubnt.com/downloads/unifi/5.6.37/UniFi.unix.zip \
 && unzip /usr/src/UniFi.unix.zip -d /srv && mv /srv/UniFi /srv/unifi \
 \
 && echo "====== CLEANUP ======" \
 && cd /usr/src \
 && rm -rf \
  /tmp/* \
  /usr/src/* \
  /var/cache/apk/*

EXPOSE 8080 8443 8880 8843
COPY override /