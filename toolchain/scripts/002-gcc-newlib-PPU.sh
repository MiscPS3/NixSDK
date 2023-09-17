#!/bin/sh -e
# gcc-newlib-PPU.sh by Naomi Peori (naomi@peori.ca)

GCC="gcc-4.7.4"
NEWLIB="newlib-1.20.0"

if [ ! -d ${GCC} ]; then

  ## Unpack the source code.
  rm -Rf ${GCC} && tar xfvj ../archive/${GCC}.tar.bz2
  rm -Rf ${NEWLIB} && tar xfvz ../archive/${NEWLIB}.tar.gz

  ## Patch the source code.
  cat ../patches/${GCC}-PS3.patch | patch -p1 -d ${GCC}
  cat ../patches/${NEWLIB}-PS3.patch | patch -p1 -d ${NEWLIB}

  ## Enter the source code directory.
  cd ${GCC}

  ## Create the newlib symlinks.
  ln -s ../${NEWLIB}/newlib newlib
  ln -s ../${NEWLIB}/libgloss libgloss

  ## Download the prerequisites.
  ./contrib/download_prerequisites

  ## Leave the source code directory.
  cd ..

fi

if [ ! -d ${GCC}/build-ppu ]; then

  ## Create the build directory.
  mkdir ${GCC}/build-ppu

fi

## Enter the build directory.
cd ${GCC}/build-ppu

## Configure the build.
../configure --prefix="$PS3DEV/ppu" --target="powerpc64-ps3-elf" \
    --disable-dependency-tracking \
    --disable-libstdcxx-pch \
    --disable-multilib \
    --disable-nls \
    --disable-shared \
    --disable-win32-registry \
    --enable-languages="c,c++" \
    --enable-long-double-128 \
    --enable-lto \
    --enable-threads \
    --with-cpu="cell" \
    --with-newlib \
    --with-system-zlib

## Compile and install.
${MAKE:-make} -j 4 all && ${MAKE:-make} install
