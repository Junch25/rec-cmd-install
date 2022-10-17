#!/bin/bash

# libarib25 install
echo "libarib25 and recpt1 install start!"
cd ~/git || exit
git clone https://github.com/stz2012/libarib25.git
cd libarib25/ || exit
cmake .
make
sudo make install

# recpt1 install
cd ~/git || exit
git clone https://github.com/stz2012/recpt1.git
cd recpt1/recpt1 || exit
./autogen.sh
./configure --enable-b25 
make
sudo make install
echo "libarib25 and recpt1 install done!"
