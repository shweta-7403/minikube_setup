#!/bin/bash

# Add Docker repository
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo

# Verify if Docker registry is enabled
sudo dnf repolist | grep -i docker

echo "Docker repository has been added, and its registry status has been checked."
# Install Docker CE along with dependencies
sudo dnf install docker-ce docker-ce-cli containerd.io -y

# Add current user to the docker group
sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock

# Switch to the docker group
newgrp docker

# Start Docker service
sudo systemctl start docker

# Enable Docker service to start on boot
sudo systemctl enable docker

# Verify Docker installation by running a test container
docker run hello-world

echo "Docker CE has been installed and configured successfully."

# Download and install Minikube binary
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Download kubectl binary
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# Install kubectl binary
sudo cp kubectl /usr/local/bin/
sudo chmod +x /usr/local/bin/kubectl

echo "Minikube and kubectl have been installed successfully."

# Start Minikube cluster with Docker as driver
minikube start --driver=docker

echo "Minikube cluster has been started with Docker as the driver."


