# Boxen setup script
A simple shell script to setup a Boxen instance on a SMM Machine.

## Use me
If you are setting up a computer from scratch you will need the OS X
command line tools. Open Appllications > Utilities > Terminal.app. Type:

`xcode-select --install`

and select the default install options. You should not need to install the 
full XCode suite, just the command line tools.

Then run:

1. `git clone https://github.com/scimusmn/boxen-setup.git`
1. `cd boxen-setup`
1. `./boxen-setup.sh`

The inital run can take tens of minutes or up to multiple hours.

*Resist the urge to cancel out of the process. It can cause errors while software is compiling.*

### Troubleshooting
If there are problems loop through these solutions:

1. Relaunch Terminal
1. Run `boxen` again.
1. Install the latest OS software updates.
1. Restart

Because Boxen is [idempotent](http://en.wikipedia.org/wiki/Idempotence#Computer_science_meaning)
you can run it multiple times without causing problems.
If something doesn't work, just keep running Boxen and restarting
until all errors disapear.

## What does it do?
1. Creates the Boxen directory
1. Sets the correct permissions
1. Clones our Boxen manifest
1. Runs Boxen for the first time, ignoring encryption requirement, with debug mode enabled.

We enable debug just because the first run takes a pretty long time (tens of minutes to hours) and it's helpful to be able to see that something's actually happening, during the setup.

