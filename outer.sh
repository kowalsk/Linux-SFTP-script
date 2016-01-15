#!/bin/bash

# this script just runs the "inner.sh" script as many times as there are files in the directory
for file in ftpsource/*.csv; do
  ./inner.sh $file
done