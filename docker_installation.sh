#!/bin/bash

echo "Updating packages..."
apt update -y

echo "Installing Docker..."
apt install docker.io -y

echo "Starting Docker service..."
systemctl start docker

echo "Enabling Docker at boot..."
systemctl enable docker

echo "Adding ubuntu user to docker group..."
usermod -aG docker ubuntu

echo "Docker installation completed"

docker --version
