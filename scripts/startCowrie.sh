#!/bin/bash
set -e

cd ~/cowrie
source cowrie-env/bin/activate
python3 bin/cowrie start

echo "[+] Cowrie pokrenut"
