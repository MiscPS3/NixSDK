# NixSDK

NixSDK is soft recreation of Estwald's [PSDK3v2](https://github.com/Estwald/PSDK3v2), compilable on newer 
Linux systems (only tested on Debian 11). All the credit goes to the ps3dev developers and everyone
who contributed to the creation of PSL1GHT and its related libraries.

**Important Note:** This is merely a distribution of older versions of the current ps3dev projects.
No meaningful changes were made to the source code aside from scripting tweaks.

## Sources:

### Current Repos:

- [PSL1GHT](https://github.com/ps3dev/PSL1GHT)
- [ps3toolchain](https://github.com/ps3dev/ps3toolchain)
- [ps3libraries](https://github.com/ps3dev/ps3libraries)

### Swapped PSL1GHT components:

- [scetool](https://github.com/wargio/scetool)
- [keys/curves](https://github.com/MiscPS3/KeysCurves)

## Building:

  1) Install the following software:
```bash
  autoconf, automake, bison, flex, gcc, libelf, make, makeinfo,
  ncurses, patch, python, subversion, wget, zlib, libtool, python,
  bzip2, gmp, pkg-config, g++, libssl-dev, clang
```

  2) Set environment variables:
```
  export PS3SDK=/usr/local/PSDK3v2
  export PS3DEV=$PS3SDK/ps3dev
  export PSL1GHT=$PS3SDK/psl1ght

  export PATH=$PATH:$PS3DEV/bin
  export PATH=$PATH:$PS3DEV/ppu/bin
  export PATH=$PATH:$PS3DEV/spu/bin
```

  3) Run ./build.sh or ./build-sudo.sh
  
  The SDK will be installed to /usr/local/PSDK3v2
