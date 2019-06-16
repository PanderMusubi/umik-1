cd ../download
for i in *.txt; do
    zip $i.zip $i
done
