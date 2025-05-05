Run `./up.sh` to start the ACME server.
This script creates two podman containers: an ACME server and an HTTPS server.
They will connected to a podman network, within which the ACME server will be available.

Read the script for more details.

The authority certificate will be generated at `caddy_acme/caddy_data/caddy/pki/authorities/local/root.crt`.
