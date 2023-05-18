#!/bin/bash

## Set Timezone
sudo timedatectl set-timezone Asia/Jakarta

## Update & Upgrade
sudo apt update
sudo apt upgrade -y

## Install Git, Curl, ZIP, Python3 $ Python3-pip
sudo apt install -y git curl zip python3 python3-pip

## Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

## Menambahkan user sekarang ke docker group
sudo usermod -aG docker $USER

## Start Docker
sudo systemctl start docker

# Membersihkan sampah
rm get-docker.sh

echo "Setup server selesai"
