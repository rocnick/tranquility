#!/bin/bash

# Set up Trixie Mirrors
echo "deb https://deb.debian.org/debian trixie main contrib non-free non-free-firmware
deb https://deb.debian.org/debian trixie-updates main contrib non-free non-free-firmware
deb https://security.debian.org/debian-security trixie-security main contrib non-free non-free-firmware" | tee -a /etc/apt/sources.list

# Install new sys dependencies
apt update && apt install curl wget git make gcc -y

