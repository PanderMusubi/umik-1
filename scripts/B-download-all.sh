cd ..
if [ ! -e download ]; then
	mkdir download
fi
cd download
i=6000
while [ $i -lt 9200 ]; do
	if [ ! -e 700$i\.txt ]; then
		wget http://www.minidsp.com/scripts/umikcal/umik.php/700$i\.txt
	fi
	if [ ! -e 700$i\_90deg.txt ]; then
		wget http://www.minidsp.com/scripts/umikcal/umik90.php/700$i\_90deg.txt
	fi
	let i=i+1
done
