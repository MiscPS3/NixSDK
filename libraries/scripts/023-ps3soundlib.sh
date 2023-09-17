#!/bin/sh -e
# ps3soundlib.sh by CrystalCT (crystal@unict.it)
# PS3 SOUNDLIB Credits: Hermes, HACKERCHANNEL, Xiph.Org, mpg123 project and Wargio/deroad

## Unpack the source code.
rm -Rf ps3soundlib && tar xvzf ../archive/ps3soundlib.tar.gz && cd ps3soundlib

## Compile and install.
${MAKE:-make} install -C libs --no-print-directory
