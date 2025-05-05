Demonstrates how to use Caddy to serve ACME and to use it to host a HTTPS website.

Run `./up.sh` to start the ACME server.
This script creates two podman containers: an ACME server and an HTTPS server.
They will connected to a podman network, within which the ACME server will be available.

Read the script for more details.

You would need to add the root certificate for the host machine.
Check the script for the path.

