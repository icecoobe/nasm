#!/bin/bash


nasm -f bin -o bin/$1.bin $1.asm

#~/c/mbr bin/$1.bin
dd if=bin/$1.bin of="/media/luke/vm/VirtualBox VMs/dos2/dos2.vhd" bs=512 count=1 conv=notrunc

vboxmanage startvm dos2