if [ -e zipped ]
then
    rm -rf zipped
fi
mkdir zipped

cd data
for i in *.tsv
do
    zip ../zipped/$i.zip $i
done
