#!/bin/bash
HOST='192.168.39.12'

(
  for file in ftpsource/*.txt; do
    mv ${file} ${file}.tmp
  done
)

sftp $HOST << EOT
cd PawelTest
mput ftpsource/*
bye
EOT

(
  for file in *.tmp; do
    echo mv ${file} ${file}
  done
)