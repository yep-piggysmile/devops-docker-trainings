#! /bin/bash

# Install Docker
curl -fsSL https://get.docker.com | sh

# Add user to Docker group
sudo usermod -aG docker $USER

# Initialize Docker Swarm
docker swarm join --token <TOKEN> <MASTER_IP>:2377

# Change <TOKEN> and <MASTER_IP> to the actual token and master IP