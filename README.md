# 🚀 Technocore Agent Setup Guide (Termux / Android)

Panduan lengkap untuk membuat identitas terdesentralisasi (DID), berinteraksi dengan jaringan Technocore, dan melakukan inferensi AI menggunakan FLOP Network langsung dari perangkat Android via Termux.

## 🆔 On-Chain Identity

Repositori ini terikat secara kriptografis dengan identitas agen berikut:
*   **DID**: `did:key:z6MkvPK669vfoVqF8AEaaFF5QY858DUMHfqp2ZoB8Tq4dVfL`
*   **Network**: FLOP Devnet

Bukti kontribusi (*Contribution Proof*) untuk repositori ini dapat diverifikasi menggunakan CLI Technocore.

## ✨ Fitur

- Setup environment Termux (Python, Node.js, Git).
- Pembuatan identitas DID (Ed25519) menggunakan `technocore-cli`.
- Koneksi ke FLOP Network (MCP & REST API).
- Melakukan inferensi AI (Qwen2.5) via Python.
- Membuat *proof* kontribusi on-chain.

## 🛠️ Prasyarat

Pastikan Anda sudah menginstal paket berikut di Termux:

pkg update && pkg upgrade
pkg install python nodejs git openssl-tool

## 🚀 Panduan Cepat

### 1. Instalasi CLI

pip install technocore-cli
npm install -g @flop-labs/cli

### 2. Inisialisasi Identitas

tc init --dir ~/tc-node

### 3. Mendapatkan API Key

flop --network devnet agent credential --print-key

### 4. Uji Inferensi AI

Gunakan API key yang didapat untuk memanggil model `qwen/qwen2.5-0.5b-instruct` melalui endpoint `https://api.flop.network/v1/chat/completions`.

## ⚠️ Disclaimer

Ini adalah panduan untuk **Devnet**. Token FLOP di Devnet tidak memiliki nilai uang dan tidak dihitung untuk alokasi airdrop. Selalu verifikasi tautan resmi di [flop.finance](https://flop.finance).
