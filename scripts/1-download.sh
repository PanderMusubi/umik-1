#!/usr/bin/bash
set -e

cd ..
if [ ! -e download ]; then
    mkdir download
fi
cd download
for i in {7005750..7005800}; do
	if [ ! -e $i\.txt ]; then
		wget https://www.minidsp.com/scripts/umikcal/umik.php/$i\.txt
	fi
	if [ ! -e $i\_90deg.txt ]; then
		wget https://www.minidsp.com/scripts/umikcal/umik90.php/$i\_90deg.txt
	fi
done
for i in {7007150..7007200}; do
	if [ ! -e $i\.txt ]; then
		wget https://www.minidsp.com/scripts/umikcal/umik.php/$i\.txt
	fi
	if [ ! -e $i\_90deg.txt ]; then
		wget https://www.minidsp.com/scripts/umikcal/umik90.php/$i\_90deg.txt
	fi
done
for i in {7009100..7009150}; do
	if [ ! -e $i\.txt ]; then
		wget https://www.minidsp.com/scripts/umikcal/umik.php/$i\.txt
	fi
	if [ ! -e $i\_90deg.txt ]; then
		wget https://www.minidsp.com/scripts/umikcal/umik90.php/$i\_90deg.txt
	fi
done
