#!/bin/bash

# Get Machine
bitbake -e | grep MACHINE= | head -n1 > /tmp/a.sh

ln -s build/tmp/deploy/images/$MACHINE/odroid-image-$MACHINE.rootfs.wic "./$MACHINE.img"
ln -s build/tmp/deploy/images/$MACHINE/odroid-image-$MACHINE.rootfs.wic.xz "./$MACHINE.img.xz"


