#!/bin/sh

sudo mkdir -p /opt/boxen/repo
sudo chown -R ${USER}:staff /opt
git clone https://github.com/scimusmn/boxen.git /opt/boxen/repo
cd /opt/boxen/repo
./script/boxen --no-fde --debug
