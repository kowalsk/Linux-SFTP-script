#!/bin/bash

#keeping original name just in case
filename=$(basename $1 .tmp)

#renaming original file to .tmp to show it is being processed
mv $1 $1.tmp
ls

#connecting to SFTP using keys - not passwords
sftp 192.168.39.12 << EOT
cd PawelTest
put $1.tmp
ls
rename $1.tmp $1
ls
bye
EOT