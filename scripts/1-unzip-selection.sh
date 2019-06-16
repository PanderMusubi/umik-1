cd ../download
for i in `cat ../scripts/serial-number-selection.txt`; do
    unzip -o $i.txt.zip
done
