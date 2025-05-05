FROM caddy:latest

COPY ./caddy_data/caddy/pki/authorities/local/root.crt /usr/local/share/ca-certificates/caddy-ca.crt

RUN apk update && apk add curl openssl

RUN update-ca-certificates


