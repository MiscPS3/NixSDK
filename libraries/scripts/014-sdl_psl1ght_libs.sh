#!/bin/sh -e
# sdl_psl1ght_libs.sh by Naomi Peori (naomi@peori.ca)

## Unpack the source code.
rm -Rf sdl_psl1ght_libs && tar xvzf ../archive/sdl_psl1ght_libs.tar.gz && cd sdl_psl1ght_libs

## Compile and install.
./make_SDL_Libs.sh
