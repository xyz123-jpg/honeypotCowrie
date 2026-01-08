#!/bin/bash
set -e

sudo sed -i 's/^#Port 22/Port 22222/' /etc/ssh/sshd_config
sudo sed -i 's/^Port 22/Port 22222/' /etc/ssh/sshd_config

sudo systemctl restart ssh

echo "[+] Pravi SSH premješten na port 22222"
