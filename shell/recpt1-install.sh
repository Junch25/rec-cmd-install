#!/bin/bash

# libaribb25 install
echo "libaribb25 and recpt1 install start!"
cd ~/git || exit
git clone https://github.com/Junch25/libaribb25.git
cd libaribb25/ || exit
cmake .
make
sudo make install

# recpt1 install
cd ~/git || exit
git clone https://github.com/Junch25/recpt1.git
cd recpt1/recpt1 || exit
./autogen.sh
./configure --enable-b25 
make
sudo make install
echo "done!"
