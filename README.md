# Linux-SFTP-script
Script for sending multiple files from Linux to SFTP server

This will eventually be used for sending files using SFTP. There is no password required as this is using keys, more info:
https://askleo.com/how_can_i_automate_an_sftp_transfer_between_two_servers/

There will be one script doing these steps:
  - renaming file to FILENAME.tmp
  - making connection to the SFTP
  - uploading the file
  - renaming uploaded file back to FILENAME (with no .tmp)
  - deleting original local file
  
  This script will be wrapped with another script that will be running for all files in the local directory,
  running above script once per each file.
