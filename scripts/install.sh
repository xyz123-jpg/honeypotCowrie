#!/bin/bash
set -e

sudo apt update
sudo apt install -y \
  git python3 python3-venv \
  libssl-dev libffi-dev \
  build-essential iptables

cd ~

git clone https://github.com/cowrie/cowrie.git
cd cowrie

python3 -m venv cowrie-env
source cowrie-env/bin/activate

pip install --upgrade pip
pip install -r requirements.txt

cp etc/cowrie.cfg.dist etc/cowrie.cfg

echo "[+] Cowrie uspješno instaliran"
