#!/usr/bin/env bash

podman-compose --podman-run-args=--replace up -d caddy_acme

echo "Waiting for the root certificate to be generated..."

while [ ! -f ./caddy_acme/caddy_data/caddy/pki/authorities/local/root.crt ]
do 
	sleep 1 # Wait for the caddy-acme to start and serve the root certificate.
done

echo "The root certificate is generated."

podman-compose --podman-run-args=--replace up -d caddy_leaf

