#!/bin/bash

# Download Discord and install it
wget -O /tmp/discord.deb "https://discord.com/api/download?platform=linux&format=deb"
apt install /tmp/discord.deb -y

# Clean up
rm -rf /tmp/discord.deb
