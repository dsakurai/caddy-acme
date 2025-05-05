#!/usr/bin/env bash

podman-compose --podman-run-args=--replace up -d caddy-ca
sleep 3 # Wait for the caddy-ca to start and serve the root certificate.
podman-compose --podman-run-args=--replace up -d caddy-leaf
