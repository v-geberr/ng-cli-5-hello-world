#!/bin/bash

# $1 is source path and file
# $2 is dest path url and file
# $3 is dest-keys

wget -O azcopy.tar.gz https://aka.ms/downloadazcopylinuxrhel6
tar -xf azcopy.tar.gz
sudo ./install.sh

echo "First arg:  $1"
echo "Second arg: $2"
echo "Third arg:  $3"


azcopy \
    --source $1 \
    --destination $2 \
    --dest-key $3
