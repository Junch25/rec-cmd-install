#!/bin/bash

# libarib25 install
echo "libarib25 and recpt1 install start!"
cd ~/git
git clone https://github.com/stz2012/libarib25.git
cd libarib25/
cmake .
make
sudo make install

# recpt1 install
cd ~/git
git clone https://github.com/stz2012/recpt1.git
cd recpt1/recpt1
./autogen.sh
./configure --enable-b25 
make
sudo make install
echo "libarib25 and recpt1 install done!"
