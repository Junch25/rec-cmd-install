#!/bin/bash

echo "Driver Install!"
mkdir ~/git
cd ~/git
git clone https://github.com/nns779/px4_drv.git
cd px4_drv/fwtool
make
wget http://plex-net.co.jp/plex/pxw3u4/pxw3u4_BDA_ver1x64.zip -O pxw3u4_BDA_ver1x64.zip
unzip -oj pxw3u4_BDA_ver1x64.zip pxw3u4_BDA_ver1x64/PXW3U4.sys
./fwtool PXW3U4.sys it930x-firmware.bin
mkdir -p /lib/firmware
cp it930x-firmware.bin /lib/firmware/
cd ../driver
make
make install
cd ../
cp -a ./ /usr/src/px4_drv-0.2.1
dkms add px4_drv/0.2.1
dkms install px4_drv/0.2.1
echo "Driver install done!"

echo "Driver check!"
lsmod | grep -e ^px4_drv
ls-la /dev/px4video*
echo "Driver check done!"