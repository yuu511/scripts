#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cp -v $DIR/grub_default.cfg /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
