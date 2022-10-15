#!/bin/bash

# libarib25 install
echo "libarib25 install"
cd ~/git
git clone https://github.com/stz2012/libarib25.git
cd libarib25/
cmake .
make
make install
echo "libarib25 install done!"

# recpt1 install
echo "recpt1 install"
cd ~/git
git clone https://github.com/stz2012/recpt1.git
cd recpt1/recpt1
./autogen.sh
./configure --enable-b25 
make
make install
echo "recpt1 install done!"
