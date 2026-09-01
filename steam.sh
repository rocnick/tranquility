#!/bin/bash

# Enable 32-bit architecture (required for Steam)
dpkg --add-architecture i386

# Enable contrib repo (where steam-installer lives)
echo "deb http://deb.debian.org/debian trixie contrib" | tee /etc/apt/sources.list.d/contrib.list

# Install Steam and pip
apt update && apt install steam-installer python3-pip -y

# Install proton
pip3 install protonup --break-system-packages

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
