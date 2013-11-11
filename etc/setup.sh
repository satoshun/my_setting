#!/bin/sh

# mongo
rm /usr/local/etc/mongod.conf
rm ~/Library/LaunchAgents/mongod.plist
ln -s mongod/mongod.conf /usr/local/etc/mongod.conf
ln -s mongod/mongod.plist ~/Library/LaunchAgents/mongod.plist
