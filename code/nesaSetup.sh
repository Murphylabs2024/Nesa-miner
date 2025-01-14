#!/bin/bash

# Check if the script is run as root user
if [ "$(id -u)" != "0" ]; then
    echo "Sử dụng người dùng ROOT để chạy!"
    echo "Nhập câu lệnh 'sudo -i' để đăng nhập với quyền ROOT."
    exit 1
fi


# Example command to install Docker on Debian/Ubuntu
# Add Docker's official GPG key:
sudo apt-get update 
sudo apt-get install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings -y
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc 
sudo chmod a+r /etc/apt/keyrings/docker.asc 

# Add the repository to APT sources:
echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
$(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update 
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Example command to install curl on Ubuntu
sudo apt-get update
sudo apt-get install -y curl 

# Create a docker group (if non-existent), adds the current user, 
# and applies group membership immediately in the current session
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# Check open ports
sudo ufw status

# Allow necessary ports (example for port 26656)
sudo ufw allow 26656

curl -s https://raw.githubusercontent.com/nesaorg/bootstrap/master/bootstrap.sh -y
chmod +x bootstrap.sh
bash bootstrap.sh

