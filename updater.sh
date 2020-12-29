#! /bin/bash

while true
do
   echo "Time: $(date): wait new instruction"
   echo "Time: $(date): wait new instruction" >> logs/updater.log
   git pull --ff-only
   if [ -e handshake/WPA.cap ]
   then
   echo "Time: $(date): get new instruction"
   echo "Time: $(date): get new instruction" >> logs/updater.log
   ./decryptor.sh
   echo "Time: $(date): run decryptor.sh"
   echo "Time: $(date): run decryptor.sh" >> logs/updater.log
   fi
   echo "Time: $(date): sleeping"
   echo "Time: $(date): sleeping" >> logs/updater.log
   sleep 15
done
