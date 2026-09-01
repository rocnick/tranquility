#!/bin/bash

# Add wezterm to apt
curl -fsSL https://apt.fury.io/wez/gpg.key | gpg --dearmor -o /etc/apt/keyrings/wezterm-fury.gpg
echo "deb [signed-by=/etc/apt/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *" | tee /etc/apt/sources.list.d/wezterm.list

# Install wezterm
apt update && apt install wezterm -y

# Install config file to home dir
mkdir -p ~/Documents/wallpapers
cp .wezterm.lua ~/.wezterm.lua
cp sudo.png ~/Documents/wallpapers/sudo.png
