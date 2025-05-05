Demonstrates how to use a Caddy instance to serve ACME and to host a HTTPS website with another.

Run `./up.sh` to start the ACME server.
This script creates two podman containers: an ACME server and an HTTPS server.
They connect to a shared podman network, within which the ACME server will be available.

Read the script for more details.

You would need to add the root certificate for the host machine.
Check the script for the path.

This project is intended for development use, since the Caddy ACME is meant for that purpose.

