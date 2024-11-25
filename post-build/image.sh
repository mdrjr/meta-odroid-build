#!/bin/bash

# Get Machine
bitbake -e | grep MACHINE= | head -n1 > /tmp/a.sh
source /tmp/a.sh
rm -rf /tmp/mnt
mkdir /tmp/mnt

# mount image first partition 
sudo mount -o loop,offset=$[2048*512] build/tmp/deploy/images/odroid-m1/odroid-image-odroid-m1.rootfs.wic /tmp/mnt
sudo cp post-build/files/$MACHINE/boot.scr /tmp/mnt
sudo cp post-build/files/autostart.cfg /tmp/mnt
sudo umount /tmp/mnt

ln -s build/tmp/deploy/images/odroid-m1/odroid-image-odroid-m1.rootfs.wic ./odroid-m1.img



