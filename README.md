# Boxen setup script

A simple shell script to setup a Boxen instance on a SMM Machine.

## What does it do.
1. Creates the Boxen directory
1. Sets the correct permissions
1. Clones our Boxen manifest
1. Runs Boxen for the first time, ignoring encryption requirement, with debug mode enabled.

We enable debug just because the first run takes a pretty long time, and I like to be able to see that something's actually happening, during the setup.
