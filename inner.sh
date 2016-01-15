#!/bin/bash

#This script uploads one file at a time to SFTP server
#It renames local file first to .tmp
#It then connects, uploads file, renames it back to no .tmp
#It then disconnects and delets the local .tmp file 


#keeping original name for later step
filename=$(basename $1 .tmp)

#renaming original local file to FILENAME.tmp to mark it is being processed
mv $1 $1.tmp


#connecting to SFTP using username & ssh keys - not passwords
sftp USERNAME@IP_ADDRESS << EOT
cd out
put $1.tmp
rename $filename.tmp $filename
ls -al
bye
EOT

#removing the original file
rm $1.tmp
