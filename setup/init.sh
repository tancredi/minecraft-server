#!/bin/sh

# Update apt-get
sudo apt-get -y update

# Install dependencies
sudo apt-get -y install make git-core default-jdk

# Create user
sudo useradd minecraft

# Clone the repo
sudo git clone https://github.com/rowanmanning/minecraft-server.git /minecraft
sudo chown -R minecraft:minecraft /minecraft

# Add firewall rules
sudo iptables -A INPUT -p tcp -d 0/0 -s 0/0 --dport 25565 -j ACCEPT

# Copy the upstart script and start the server
sudo cp /minecraft/setup/minecraft.conf /etc/init/minecraft.conf
sudo start minecraft
