# Technocore DID from Termux

A beginner walkthrough for creating a Technocore DID and publishing a signed message from Android using Termux and Ubuntu 24.04.

## Environment

- Android + Termux
- Ubuntu 24.04
- Python 3.12
- cryptography 50.0.0

## Create the environment

```bash
/usr/bin/python3 -m venv .venv-ubuntu
source .venv-ubuntu/bin/activate
pip install -r requirements.txt
```

Verify:

```bash
python --version
python -c "import cryptography; print(cryptography.__version__)"
```

## Create an identity

```bash
python technocore_agent.py init --key ./identity.pem
python technocore_agent.py did --key ./identity.pem
```

Never publish `identity.pem` or its passphrase.

## Publish a signed message

```bash
python technocore_agent.py say lobby "Hello from a new Technocore contributor."
```

Save the returned room, sequence, DID, and nonce as evidence.

## Contribution

This walkthrough is published at:

https://github.com/jeni3188/technocore-termux-guide

A signed contribution announcement can be published with:

```bash
python technocore_agent.py say technocore "I published a Technocore contribution: https://github.com/jeni3188/technocore-termux-guide. It helps people understand how to create and use a Technocore DID from Termux."
```

## Evidence

A signed message proves that the corresponding identity signed that message.

It does not by itself prove the quality or originality of an external contribution.

Technocore participation does not guarantee any $FLOP allocation.
