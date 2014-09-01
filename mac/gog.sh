#!/bin/sh

while read line; do
    gog get $line
done <gog
