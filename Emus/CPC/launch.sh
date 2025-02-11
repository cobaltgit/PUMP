#!/bin/sh
#echo "===================================="
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/CPC
cd $RA_DIR/

$EMU_DIR/cpufreq.sh

#disable netplay
NET_PARAM=


HOME=$RA_DIR/ $RA_DIR/ra32.trimui -v $NET_PARAM -L $RA_DIR/.retroarch/cores/crocods_libretro.so "$*"

#HOME=/mnt/SDCARD $RA_DIR/ra32.trimui -v $NET_PARAM -L $RA_DIR/.retroarch/cores/crocods_libretro.so "$*"
#HOME=$RA_DIR/ $RA_DIR/ra32.trimui -v $NET_PARAM -L $EMU_DIR/crocods_libretro.so "$*"