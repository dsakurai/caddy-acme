Caddy ACME Example With Podman
==============================

Demonstrates how to use a Caddy instance to serve ACME and to host an HTTPS website with another instance.

Simply, run `./up.sh` to start the instances.

The script creates two podman containers: an ACME server and an HTTPS server.
They connect to a shared podman network, within which the ACME server will be available.
Read the script for more details.

You would need to add the root certificate for the host machine.
(Check the script for the path.)
Afterwards, you can access the HTTPS server from the host machine at `leaf.localhost:8000`.
You can write your own podman-compose files to add your own HTTPS servers.

Tested with Caddy's official Docker image, version 2.10.0.

---

This project is intended for development use, since the Caddy's internal ACME is often used for that purpose.
