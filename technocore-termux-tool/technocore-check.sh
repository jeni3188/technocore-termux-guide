#!/usr/bin/env bash

echo "=== Technocore Termux Environment Check ==="
echo
echo "[System]"
uname -a
echo
echo "[Python]"
python --version 2>&1
echo
echo "[Cryptography]"
python -c 'import cryptography; print(cryptography.__version__)' 2>&1
echo
echo "[Technocore CLI]"
if [ -f "/data/data/com.termux/files/home/flop-testnet/technocore-did-starter/technocore_agent.py" ]; then
    echo "technocore_agent.py: OK"
else
    echo "technocore_agent.py: NOT FOUND"
fi
