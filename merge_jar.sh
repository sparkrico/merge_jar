#!/bin/bash
#Filename: merge_jar.sh

echo start......
mkdir tmp
cd tmp
for file in $(ls ../jar/)
do
    jar xvf "../jar/$file"
done
jar cvf Middleware.jar *
mv Middleware.jar ../Middleware.jar
cd ..
rm -r tmp 
ls -l Middleware.jar
echo end......
