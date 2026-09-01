#!/bin/bash

echo ""
echo "Removing Firefox ESR"
echo ""

# Remove Firefox ESR
apt remove --purge firefox-esr -y && apt autoremove -y

# Install dependencies for Firefox
apt install wget -y

# Add Mozilla's signing key
install -d -m 0755 /etc/apt/keyrings
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O /etc/apt/keyrings/packages.mozilla.org.asc

# Add the Mozilla APT repo
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | tee /etc/apt/sources.list.d/mozilla.list > /dev/null

# Pin Mozilla's repo so Firefox (not ESR) is preferred
echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | tee /etc/apt/preferences.d/mozilla > /dev/null

# Update and Install Firefox
apt update && apt install firefox -y
