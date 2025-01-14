#!/bin/bash

# Ensure the script is run as the root user
if [ "$(id -u)" != "0" ]; then
    echo "Please run this script as root!"
    echo "Use 'sudo -i' to switch to the root user."
    exit 1
fi

# Update the package index
echo "Updating package index..."
apt-get update 

# Install prerequisites
echo "Installing prerequisites..."
apt-get install -y ca-certificates curl gnupg lsb-release

# Add Docker's GPG key
echo "Adding Docker's GPG key..."
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

# Set up the Docker repository
echo "Setting up the Docker repository..."
echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
$(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the package index again and install Docker
echo "Installing Docker..."
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add the current user to the Docker group
echo "Configuring Docker group..."
if ! getent group docker > /dev/null; then
    groupadd docker
fi
usermod -aG docker $USER

# Allow necessary ports using UFW
echo "Checking UFW status..."
ufw status

echo "Allowing port 26656..."
ufw allow 26656

# Download and execute the bootstrap script
echo "Downloading and running the bootstrap script..."
curl -fsSL https://raw.githubusercontent.com/nesaorg/bootstrap/master/bootstrap.sh -o bootstrap.sh
chmod +x bootstrap.sh
./bootstrap.sh

echo "Installation complete. Please log out and log back in to apply the Docker group changes."
