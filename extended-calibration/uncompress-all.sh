if [ ! -e data ]
then
    mkdir data
fi

cd data
for i in ../zipped/*.tsv.zip
do
    unzip $i
done
