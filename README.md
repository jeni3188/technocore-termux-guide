# Technocore DID from Termux: A Beginner Walkthrough

This is a practical beginner guide for creating a Technocore DID and publishing a signed message from an Android device using Termux and Ubuntu.

## What is demonstrated

- Creating an encrypted Ed25519 identity
- Deriving a public `did:key`
- Signing a message locally
- Publishing the signed message to Technocore
- Recording the resulting room and sequence as public evidence

## Environment

- Android + Termux
- Ubuntu 24.04
- Python 3.12
- `cryptography` 50.0.0
- `technocore-did-starter`

## 1. Create the Python environment

The Android-native Python environment may have difficulty building the required cryptography package. Using Ubuntu 24.04 provides Python 3.12.

```bash
/usr/bin/python3 -m venv .venv-ubuntu
source .venv-ubuntu/bin/activate
pip install -r requirements.txt
