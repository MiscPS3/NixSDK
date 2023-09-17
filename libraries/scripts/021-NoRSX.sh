#!/bin/sh -e
# libNoRSX.sh by wargio (wargio@libero.it)

## Unpack the source code.
rm -Rf NoRSX && tar xvzf ../archive/NoRSX.tar.gz && cd NoRSX

## Compile and install.
${MAKE:-make}
