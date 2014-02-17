#!/bin/sh

echo <<EOF
Installing Boxen

You will be prompted for passwords. The first request will be for
your sudo password on the computer you are setting up.

The Boxen script will prompt you for your GitHub credentials. You should
use the SMM Machines account.
EOF

sudo mkdir -p /opt/boxen/repo
sudo chown -R ${USER}:staff /opt
git clone https://github.com/scimusmn/boxen.git /opt/boxen/repo
cd /opt/boxen/repo
./script/boxen --no-fde --debug
