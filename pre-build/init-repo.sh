#!/bin/bash

git submodule update --init --recursive

export BOARD="odroid-m1"

echo
echo
echo "Select board to build:"
echo "1 - ODROID-M1/M1S"
echo "2 - ODROID-M2"
echo -n ": "
read brd
if [ "$brd" -eq "1" ]; then
    sed -i "s/@BOARD@/odroid-m1/g" build/conf/local.conf
elif [ "$brd" -eq "2" ]; then
    sed -i "s/@BOARD@/odroid-m1/g" build/conf/local.conf
else
    echo "ERROR: Invalid board, try again"
    exit 0
fi

echo "Now you can run: "
echo "source poky/oe-init-build-env"
echo
echo "autostart.cfg: post-build/files/autostart.cfg"
echo
echo
echo "To build a image run:"
echo "bitbake odroid-image"
echo
echo
echo "After the image is build run:"
echo "source post-build/image.sh"
echo "You will have the odroid.img on this folder"


