cd ../generated
for i in $(ls *-fit-response.tsv|sort -n); do
    i=$(basename $i -fit-response.tsv)
    zip $i.zip $i*tsv $i.xml
done
