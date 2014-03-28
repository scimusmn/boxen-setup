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

#
# The Apple LLVM compiler in Xcode 5.1 treats unrecognized command-line options
# as errors. This issue has been seen when building both Python native
# extensions and Ruby Gems, where some invalid compiler options are currently
# specified.
#
# Projects using invalid compiler options will need to be changed to remove those
# options. To help ease that transition, the compiler will temporarily accept an
# option to downgrade the error to a warning.
#
# This calls that option so that when Boxen tries to compile those various
# libraries, it won't error out. This seems to be a temporary issue until the
# various libraries update. I don't think Boxen is going to do anything about
# it right now. I'm adding it here so that we get a default install behavior.
#
ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future ./script/boxen --no-fde --debug
