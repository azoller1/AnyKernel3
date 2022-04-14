#!/bin/bash

rm ~/android/anykernel/Image*
rm ~/android/anykernel/dtb*
rm ~/android/anykernel/*.zip


cp out/arch/arm64/boot/Image.gz ~/android/anykernel/Image.gz
cp out/arch/arm64/boot/dtbo.img ~/android/anykernel/dtbo.img
cp out/arch/arm64/boot/dts/vendor/qcom/kona-v2.1.dtb ~/kernels/anykernel/dtb

cd ~/android/anykernel/

zip -r -9 xtd_kernel.zip *
