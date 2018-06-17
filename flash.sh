#!/bin/bash 
set -ue

fastboot flash ptable prm_ptable.img
fastboot flash xloader sec_xloader.img
fastboot flash fastboot l-loader.bin
fastboot flash fip fip.bin
fastboot flash boot boot2grub.uefi.img

fastboot flash system $IMAGE
