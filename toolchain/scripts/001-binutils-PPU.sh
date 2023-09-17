#!/bin/sh -e
# binutils-PPU.sh by Naomi Peori (naomi@peori.ca)

BINUTILS="binutils-2.22"

if [ ! -d ${BINUTILS} ]; then

  ## Unpack the source code.
  tar xfvj ../archive/${BINUTILS}.tar.bz2

  ## Patch the source code.
  cat ../patches/${BINUTILS}-PS3.patch | patch -p1 -d ${BINUTILS}

fi

if [ ! -d ${BINUTILS}/build-ppu ]; then

  ## Create the build directory.
  mkdir ${BINUTILS}/build-ppu

fi

## Enter the build directory.
cd ${BINUTILS}/build-ppu

## Configure the build.
../configure --prefix="$PS3DEV/ppu" --target="powerpc64-ps3-elf" \
    --disable-nls \
    --disable-shared \
    --disable-debug \
    --disable-dependency-tracking \
    --disable-werror \
    --enable-64-bit-bfd \
    --with-gcc \
    --with-gnu-as \
    --with-gnu-ld

## Compile and install.
${MAKE:-make} -j 4 && ${MAKE:-make} install
