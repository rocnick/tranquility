#!/bin/bash

# Installing and enabling keyd
apt install keyd -y
systemctl enable keyd --now
