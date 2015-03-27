#!/bin/sh
#
# This file was automatically generated.
#
# It can be overwritten by nios2-flash-programmer-generate or nios2-flash-programmer-gui.
#

#
# Converting ELF File: C:\Users\qsjiang\Documents\Github\ECE492Research\LaserHarpBuildFlashed\software\Tutorial3V2\Tutorial3V2.elf to: "..\flash/Tutorial3V2_generic_tristate_controller_0.flash"
#
elf2flash --input="C:/Users/qsjiang/Documents/Github/ECE492Research/LaserHarpBuildFlashed/software/Tutorial3V2/Tutorial3V2.elf" --output="../flash/Tutorial3V2_generic_tristate_controller_0.flash" --boot="$SOPC_KIT_NIOS2/components/altera_nios2/boot_loader_cfi.srec" --base=0x1800000 --end=0x1c00000 --reset=0x1800000 --verbose 

#
# Programming File: "..\flash/Tutorial3V2_generic_tristate_controller_0.flash" To Device: generic_tristate_controller_0
#
nios2-flash-programmer "../flash/Tutorial3V2_generic_tristate_controller_0.flash" --base=0x1800000 --sidp=0x11090B0 --id=0x0 --timestamp=1427412040 --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-0]' --program --verbose 

