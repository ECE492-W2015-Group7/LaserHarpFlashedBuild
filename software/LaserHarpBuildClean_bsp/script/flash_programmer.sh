#!/bin/sh
#
# This file was automatically generated.
#
# It can be overwritten by nios2-flash-programmer-generate or nios2-flash-programmer-gui.
#

#
# Converting ELF File: C:\Users\qsjiang\Documents\Github\LaserHarpBuildFlashed\software\LaserHarpBuildClean\LaserHarpBuildClean.elf to: "..\flash/LaserHarpBuildClean_generic_tristate_controller_0.flash"
#
elf2flash --input="C:/Users/qsjiang/Documents/Github/LaserHarpBuildFlashed/software/LaserHarpBuildClean/LaserHarpBuildClean.elf" --output="../flash/LaserHarpBuildClean_generic_tristate_controller_0.flash" --boot="$SOPC_KIT_NIOS2/components/altera_nios2/boot_loader_cfi.srec" --base=0x1400000 --end=0x1800000 --reset=0x1400000 --verbose 

#
# Programming File: "..\flash/LaserHarpBuildClean_generic_tristate_controller_0.flash" To Device: generic_tristate_controller_0
#
nios2-flash-programmer "../flash/LaserHarpBuildClean_generic_tristate_controller_0.flash" --base=0x1400000 --sidp=0x19090F0 --id=0x0 --timestamp=1428299501 --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-0]' --program --verbose 

