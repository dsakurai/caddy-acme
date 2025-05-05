#!/usr/bin/env bash

podman network create local_acme_net

# Name of the ACME podman container
ACME_CONTAINER=caddy_acme
ACME_CONTAINER_DIR="$ACME_CONTAINER" # Directory containing the config

# Name of the example https server, which is another podman container. 
HTTPS_CONTAINER=caddy_leaf
HTTPS_CONTAINER_DIR="$HTTPS_CONTAINER" # Directory containing the config

# The path to the certificate.
CERTIFICATE="${ACME_CONTAINER_DIR}/caddy_data/caddy/pki/authorities/local/root.crt"

# Run the ACME server
podman-compose --podman-run-args=--replace up -d $ACME_CONTAINER

echo "Waiting for the root certificate to be generated at $PWD/$CERTIFICATE"

# Wait for the ACME server (in the podman container) to start and serve the root certificate.
while [ ! -f "$CERTIFICATE" ]
do 
	sleep 1
done

echo "The root certificate is available."

# Start the example https server.
(cd "$HTTPS_CONTAINER_DIR" && podman-compose --podman-run-args=--replace up -d $HTTPS_CONTAINER)

