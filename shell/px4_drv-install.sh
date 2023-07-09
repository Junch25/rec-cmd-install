#!/bin/bash

# px4 driver install
echo "PX4 Driver install start!"
mkdir ~/git
cd ~/git || exit
git clone https://github.com/nns779/px4_drv.git && cd px4_drv/fwtool || exit
make
wget http://plex-net.co.jp/plex/pxw3u4/pxw3u4_BDA_ver1x64.zip -O pxw3u4_BDA_ver1x64.zip
unzip -oj pxw3u4_BDA_ver1x64.zip pxw3u4_BDA_ver1x64/PXW3U4.sys
./fwtool PXW3U4.sys it930x-firmware.bin
sudo mkdir -p /lib/firmware
sudo cp it930x-firmware.bin /lib/firmware/
cd ../driver || exit
make
sudo make install
cd ../ || exit
sudo cp -a ./ /usr/src/px4_drv-0.2.1
sudo dkms add px4_drv/0.2.1
sudo dkms install px4_drv/0.2.1
lsmod | grep -e ^px4_drv
ls -la /dev/ | grep px4video
echo "done!"
