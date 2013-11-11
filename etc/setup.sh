#!/bin/sh

CURRENT_PATH=$(cd $(dirname $0);pwd)

# mongo
if [ -e "/usr/local/etc/mongod.conf" ]; then
    rm /usr/local/etc/mongod.conf
fi

if [ -e "~/Library/LaunchAgents/mongod.plist" ]; then
    rm ~/Library/LaunchAgents/mongod.plist
fi

ln -s -f ${CURRENT_PATH}/mongod/mongod.conf /usr/local/etc
ln -s -f ${CURRENT_PATH}/mongod/mongod.plist ~/Library/LaunchAgents
