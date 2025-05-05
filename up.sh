#!/usr/bin/env bash

podman-compose --podman-run-args=--replace up -d caddy-ca

echo "Waiting for the root certificate to be generated..."

while [ ! -f ./caddy_data/caddy/pki/authorities/local/root.crt ]
do 
	sleep 1 # Wait for the caddy-ca to start and serve the root certificate.
done

echo "The root certificate is generated."

podman-compose --podman-run-args=--replace up -d caddy-leaf

