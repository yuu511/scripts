#!/bin/bash
# avrdude -C /etc/avrdude.conf -P /dev/ttyACM0 -b 19200 -c avrisp -patmega32u4 -Ulock:w:0x3F:m -Uefuse:w:0xcb:m -Uhfuse:w:0xd8:m -Ulfuse:w:0xff:m
# 
# avrdude -C /etc/avrdude.conf -P /dev/ttyACM0 -b 19200 -e -c avrisp -patmega32u4 -Uflash:w:/home/elijah/etc/bootloaders/ATMega32U4-usbdevice_dfu-1_0_0.hex -Ulock:w:0x2F:m

avrdude -p m32u4 -c arduino -U flash:w:/home/elijah/etc/bootloaders/ATMega32U4-usbdevice_dfu-1_0_0.hex -U lfuse:w:0x5e:m -U hfuse:w:0x99:m -U efuse:w:0xc3:m -P /dev/ttyACM0
