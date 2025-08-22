#! /bin/bash

# Create a network for Traefik
docker network create --driver=overlay traefik-net

# Create a Traefik service
docker service create \
  --name traefik \
  --constraint=node.role==manager \
  --publish 80:80 --publish 443:443 \
  --mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
  --network traefik-net \
  traefik:v3.1 \
  --api.insecure=true \
  --providers.docker