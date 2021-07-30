#!/bin/bash
apt-get install -y gettext
make clean
rm -Rf release
make
make release
mkdir release
mkdir release/nanoS
mkdir release/nanoS/bin
mkdir release/nanoS/debug
mv bin/* release/nanoS/bin/
mv debug/* release/nanoS/debug/
mv install.sh release/nanoS/install.sh
make clean
BOLOS_SDK=$NANOX_SDK make
#BOLOS_SDK=$NANOX_SDK make release
mkdir release/nanoX
mkdir release/nanoX/bin
mkdir release/nanoX/debug
mv bin/* release/nanoX/bin/
mv debug/* release/nanoX/debug/
#mv install.sh release/nanoX/install.sh
