#!/bin/bash
rm -rf out/
export ARCH=arm64

PATH="$HOME/toolchains/atom15/bin:$PATH"

make O=out ARCH=arm64 CC=clang xtd_defconfig
make O=out ARCH=arm64 CC=clang menuconfig


time make -j6 O=out ARCH=arm64 CC=clang AR=llvm-ar NM=llvm-nm STRIP=llvm-strip OBJDUMP=llvm-objdump READELF=llvm-readelf CROSS_COMPILE=aarch64-linux-gnu-
#time make -j6 O=out ARCH=arm64 LLVM=1 LLVM_IAS=0 CROSS_COMPILE=aarch64-linux-gnu-
