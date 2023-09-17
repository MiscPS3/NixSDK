#!/bin/sh
# check-libtool.sh by Naomi Peori (naomi@peori.ca)

## Check for libtool.
{ libtool --version || libtool -V; } 1> /dev/null || { echo "ERROR: Install libtool before continuing."; exit 1; }
