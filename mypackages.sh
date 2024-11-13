#!/bin/bash

# Update the package index
echo "Updating package list..."
sudo apt-get update -y
echo "working"

# Install Docker.io
echo "Installing Docker.io..."
sudo apt-get install docker.io -y
echo "working"

# Install MySQL
echo "Installing MySQL..."
sudo apt-get install mysql-server -y
echo "working"

# Install unzip
echo "Installing unzip..."
sudo apt-get install unzip -y
echo "working"
# Install Zabbix Monitoring Tool
echo "Installing Zabbix Monitoring Tool..."
sudo apt-get install zabbix-agent -y
echo "working"

# Install SSH
echo "Installing SSH..."
sudo apt-get install openssh-server -y
echo "working"

# Install network packages
echo "Installing network packages..."
sudo apt-get install net-tools -y
echo "working"

# Install OpenSSH
echo "Installing OpenSSH..."
sudo apt-get install openssh-client -y
echo "working"

# Install tree
echo "Installing tree..."
sudo apt-get install tree -y
echo "working"

# Install Wireshark
echo "Installing Wireshark..."
sudo apt-get install wireshark -y
echo "working"

# Install Visual Studio Code (VSCode)
echo "Installing VSCode..."
sudo snap install --classic code
echo "working"

# Install Node.js
echo "Installing Node.js..."
sudo apt-get install nodejs -y
sudo apt-get install npm -y
echo "working"

# Install Inkscape
echo "Installing Inkscape..."
sudo apt-get install inkscape -y
sleep 2

# Install Docker Compose (Optional, if you need it for Docker)
echo "Installing Docker Compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r .tag_name)/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "working"

# Verify installation of each software
echo "Verifying installation..."

docker --version
echo "working"
mysql --version
echo "working"
unzip -v
echo "working"
zabbix_agentd --version
echo "working"
ssh -V
echo "working"
ifconfig
echo "working"
tree --version
echo "working"
wireshark -v
echo "working"
code --version
echo "working"
node --version
echo "working"
npm --version
echo "working"
inkscape --version

echo "All packages installed successfully!"
