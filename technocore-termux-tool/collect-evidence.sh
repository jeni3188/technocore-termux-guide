#!/usr/bin/env bash

set -u

BASE="/data/data/com.termux/files/home/flop-testnet/technocore-did-starter"
OUT="$PWD/evidence"

mkdir -p "$OUT"

STAMP="$(date -u +%Y%m%dT%H%M%SZ)"
FILE="$OUT/$STAMP.txt"

{
    echo "Technocore Termux Contribution Evidence"
    echo "========================================"
    echo
    echo "Collected (UTC): $(date -u '+%Y-%m-%dT%H:%M:%SZ')"
    echo
    echo "[Repository]"
    echo "Path: $BASE"
    git -C "$BASE" remote get-url contribution 2>/dev/null || true
    echo
    echo "[Commit]"
    git -C "$BASE" log -1 --format='%H%n%s%n%an%n%aI' 2>/dev/null || true
    echo
    echo "[Working tree]"
    git -C "$BASE" status --short 2>/dev/null || true
    echo
    echo "[Tutorial]"
    wc -l "$BASE/TERMUX-TUTORIAL.md" 2>/dev/null || true
    echo
    echo "[Environment]"
    python --version 2>&1 || true
    python -c 'import cryptography; print("cryptography", cryptography.__version__)' 2>&1 || true
    echo
    echo "[Technocore DID]"
    python "$BASE/technocore_agent.py" did --key "$BASE/identity.pem" 2>&1 || true
    echo
    echo "[Existing signed contribution]"
    echo "Room: technocore"
    echo "Sequence: 4164103"
    echo
    echo "[Public contribution]"
    echo "https://github.com/jeni3188/technocore-termux-guide"
    echo
    echo "NOTE: This evidence intentionally excludes private keys and passphrases."
} > "$FILE"

echo "Evidence saved:"
echo "$FILE"
