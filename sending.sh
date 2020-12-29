#! /bin/bash

echo "Time: $(date): start sending"
echo "Time: $(date): start sending" >> logs/send.log
# Add new key
git add .
echo "Time: $(date): key add"
echo "Time: $(date): key add" >> logs/send.log
# Save new key
git commit -m"Add new key"
echo "Time: $(date): key saved" 
echo "Time: $(date): key saved" >> logs/send.log
# Send new key
git push
echo "Time: $(date): key sended"
echo "Time: $(date): key sended" >> logs/send.log
