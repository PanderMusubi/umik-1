#!/usr/bin/bash
set -e

cd ..
if [ ! -e download ]; then
	mkdir download
fi
cd download
for i in `cat serial-number-selection.txt|sort -n`; do
	if [ ! -e $i\.txt ]; then
		wget https://www.minidsp.com/scripts/umikcal/umik.php/$i\.txt
	fi
	if [ ! -e $i\_90deg.txt ]; then
		wget https://www.minidsp.com/scripts/umikcal/umik90.php/$i\_90deg.txt
	fi
done
