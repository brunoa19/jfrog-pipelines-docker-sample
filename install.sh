#!/bin/bash -e

echo "================= Adding some global settings ==================="
mkdir -p "$HOME/.ssh/"
mv /config "$HOME/.ssh/"
mv /90forceyes /etc/apt/apt.conf.d/
touch "$HOME/.ssh/known_hosts"
mkdir -p /etc/drydock

echo "================= Installing basic packages ================"
apt-get update
apt-get install -y \
sudo \
software-properties-common \
wget \
unzip \
curl \
openssh-client \
ftp \
gettext \
smbclient \
mercurial \
apache2

echo "================= Installing Python packages =================="
apt-get install -q -y \
python-pip \
python2.7-dev

pip install -q virtualenv==16.7.0
pip install -q pyOpenSSL==19.1.0
