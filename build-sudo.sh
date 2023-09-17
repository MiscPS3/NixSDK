#!/bin/sh

## Enter the PSDK3v2 directory.
cd "`dirname $0`" || { echo "ERROR: Could not enter the PSDK3v2 directory."; exit 1; }

## Set up the environment.
export PS3SDK=/usr/local/PSDK3v2
export PS3DEV=$PS3SDK/ps3dev
export PSL1GHT=$PS3SDK/psl1ght

## Set up the path.
export PATH=$PATH:$PS3DEV/bin
export PATH=$PATH:$PS3DEV/ppu/bin
export PATH=$PATH:$PS3DEV/spu/bin

## Run the toolchain script.
./build.sh $@ || { echo "ERROR: Could not run the PSDK3v2 script."; exit 1; }
