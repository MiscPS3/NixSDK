#!/bin/sh -e
# gdb-SPU.sh by Naomi Peori (naomi@peori.ca)

GDB="gdb-7.5.1"

if [ ! -d ${GDB} ]; then

  ## Unpack the source code.
  tar xfvj ../archive/${GDB}.tar.bz2

fi

if [ ! -d ${GDB}/build-spu ]; then

  ## Create the build directory.
  mkdir ${GDB}/build-spu

fi

## Enter the build directory.
cd ${GDB}/build-spu

## Configure the build.
../configure --prefix="$PS3DEV/spu" --target="spu" \
    --disable-nls \
    --disable-sim \
    --disable-werror

## Compile and install.
${MAKE:-make} -j 4 && ${MAKE:-make} install
