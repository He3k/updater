#! /bin/bash

while true
do
   echo "Wait new instruction"
   git pull --ff-only
   ./decryptor.sh
   sleep 15
done
