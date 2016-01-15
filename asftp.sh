#!/bin/bash

for file in `find ftpsource -name \*.csv`; do

filename=$(basename $file)
echo $filename
mv $file $file.tmp

sftp USER_NAME@IP_ADDRESS << EOT
cd out
put $file.tmp
rename $filename.tmp $filename
ls -al
bye
EOT

rm $file.tmp

done