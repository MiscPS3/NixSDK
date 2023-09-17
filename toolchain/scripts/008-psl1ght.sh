#!/bin/sh -e
# psl1ght.sh by Naomi Peori (naomi@peori.ca)

## Unpack the source code.
tar -xvzf ../archive/psl1ght.tar.gz

## Create the build directory.
cd psl1ght

## Compile and install.
${MAKE:-make} install-ctrl && ${MAKE:-make} && ${MAKE:-make} install
