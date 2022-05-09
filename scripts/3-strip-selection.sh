#!/usr/bin/bash
set -e

cd ..
if [ ! -e stripped ]; then
    mkdir stripped
fi
cd stripped
# Strip headers from calibration files
for i in `cat ../scripts/serial-number-selection.txt|sort -n`; do
   tail -n +2 ../download/$i.txt > $i.tsv
   tail -n +3 ../download/$i\_90deg.txt > $i\_90deg.tsv
done
#TODO SENSF=`grep 'Sens Factor' download/$SERNO.txt |awk -F '=' '{print $2}'|awk -F 'dB' '{print $1}'`
