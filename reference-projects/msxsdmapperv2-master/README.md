# MSX SD Mapper V2

## WARNING: do not try to update the old SDMapper V1 (and its clones) with this new ROM using the old SDMUPD.COM utility, as the hardware is different, and it will brick your cartridge.

# readme in portuguese

SD Mapper/Megaram 512K project for MSX

Copyright (c) 2014-2020
Fabio Belavenuto
Licenced under
CERN OHL v1.1
http://ohwr.org/cernohl

This documentation describes Open Hardware and is licensed under the CERN OHL v. 1.1.
You may redistribute and modify this documentation under the terms of the
CERN OHL v.1.1. (http://ohwr.org/cernohl). This documentation is distributed
WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY,
SATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE.
Please see the CERN OHL v.1.1 for applicable conditions

This project implements a cartridge-shaped interface to add a
mass storage device using up to two SD (Secure
Digital) and a 512K Mapper for MSX line computers.
  Nextor [1] was used as operating system, being developed only
the driver to have access to the two SD cards. Nextor is an open project.
  Nextor is an evolution of MSX-DOS 2 natively supporting FAT16 partitions
up to 4GB, and can have 4 partitions per SD card. 128KB of Mapper is required on the
minimum to use Nextor with access to sub-directories, less than 128K mapper
only allows the use of the MSXDOS1 kernel, limiting partitions with FAT12 and
maximum 16MB per partition.
  One of the switches enables or disables the Mapper in conjunction with a slot expander. THE
second key allows you to select between two driver options, useful for having a
backup a stable version of the driver and use it to restore a new driver
update failed.
  A utility called "FBL-UPD.COM" was created to be able to update the flash by
MSX itself.
  To compile the FBL-UPD.COM driver and utility use the cross-compiler
SJASMPLUS [2] and to compile the CPLD code use Xilinx ISE Webpack [3].
  Thanks to FRS for rewriting the driver, to Luciano Sturaro for
board routing and the MSXBR-L community for their support and encouragement.
  Technical details:
  - The CPLD code implements all the necessary logic, implementing an expander
    of standard slots, one SPI mode 0 port, standard ASCII16 MegaROM control
    used by Nextor and the 512K Mapper control.
  - When activating the mapper, the interface activates the slot expander, and with that the
    interface works only on non-expanded slots. However, if you disable the
    mapper, the slot expander is disabled, allowing you to use the device
    of mass storage in expanded slots. the storage device
    bulk is in subslot 0 and the mapper in subslot 1.
  - There is a window in $7B00~7EFF for SPI data transfer.
  - There is a configuration and status register at address $7FF0 and a small timer
    at address $7FF1. More details in the driver source.


[1] http://www.konamiman.com/msx/msx-e.html#nextor

[2] http://sourceforge.net/projects/sjasmplus/

[3] http://www.xilinx.com/products/design-tools/ise-design-suite/ise-webpack.htm
