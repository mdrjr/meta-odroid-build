#!/bin/bash

git submodule update --init --recursive

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
echo "You will have the odroid-m1.img on this folder"


