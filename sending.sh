#! /bin/bash

echo "Start sending"
echo "Start sending" >> logs/send.log
# Add new key
git add .
echo "Key add"
echo "Key add" >> logs/send.log
# Save new key
git commit -m"Add new key"
echo "Key saved" >> logs/send.log
# Send new key
git push
echo "Key sended"
echo "Key sended" >> logs/send.log
