#!/bin/sh -e
# gdb-PPU.sh by Naomi Peori (naomi@peori.ca)

GDB="gdb-7.5.1"

if [ ! -d ${GDB} ]; then

  ## Unpack the source code.
  tar xfvj ../archive/${GDB}.tar.bz2

fi

if [ ! -d ${GDB}/build-ppu ]; then

  ## Create the build directory.
  mkdir ${GDB}/build-ppu

fi

## Enter the build directory.
cd ${GDB}/build-ppu

## Configure the build.
../configure --prefix="$PS3DEV/ppu" --target="powerpc64-ps3-elf" \
    --disable-multilib \
    --disable-nls \
    --disable-sim \
    --disable-werror

## Compile and install.
${MAKE:-make} -j 4 && ${MAKE:-make} install
