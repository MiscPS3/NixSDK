#!/bin/sh -e
# sdl_psl1ght.sh by Naomi Peori (naomi@peori.ca)

## Unpack the source code.
rm -Rf sdl_psl1ght && tar xvzf ../archive/sdl_psl1ght.tar.gz && cd sdl_psl1ght

## Compile and install.
./script.sh && ${MAKE:-make} && ${MAKE:-make} install
