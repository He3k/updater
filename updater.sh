#! /bin/bash

while true
do
   echo "Time: $(date): wait new instruction" >> logs/updater.log
   git pull --ff-only
   echo "Time: $(date): get new instruction" >> logs/updater.log
   ./decryptor.sh
   echo "Time: $(date): run decryptor.sh" >> logs/updater.log
   sleep 15
   echo "Time: $(date): sleeping" >> logs/updater.log
done
