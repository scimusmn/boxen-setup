#!/bin/sh

echo "Installing Boxen"
echo "You will be prompted for passwords. The first request will be for"
echo "your sudo password on the computer you are setting up."
echo ""
echo "The Boxen script will prompt you for your GitHub credentials. You should"
echo "use the SMM Machines account."

if [ ! -d /opt/boxen/repo ]; then
  sudo mkdir -p /opt/boxen/repo
fi

sudo chown -R ${USER}:staff /opt

if [ ! -d /opt/boxen/repo/.git ]; then
  git clone https://github.com/scimusmn/boxen.git /opt/boxen/repo
fi

cd /opt/boxen/repo

./script/boxen --no-fde --debug
