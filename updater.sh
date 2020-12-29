#! /bin/bash

while true
do
   git pull --ff-only
   ./decryptor.sh
   sleep 15
done
