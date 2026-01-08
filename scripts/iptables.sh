#!/bin/bash
set -e

sudo iptables -t nat -F
sudo iptables -t nat -A PREROUTING -p tcp --dport 22 -j REDIRECT --to-port 2222

echo "[+] Port 22 preusmjeren na Cowrie (2222)"
