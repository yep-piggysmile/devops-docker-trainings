#! /bin/bash

# Install Docker
curl -fsSL https://get.docker.com | sh

# Add user to Docker group
sudo usermod -aG docker $USER

# Initialize Docker Swarm
docker swarm init --advertise-addr $(hostname -I | awk '{print $1}')