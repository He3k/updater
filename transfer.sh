#! /bin/bash

tree
echo "Time: $(date): Update u repository"
git pull
echo "Time: $(date): Add u instruction"
git add .
echo "Time: $(date): Commit u instruction"
git commit -m"Add new instruction &(date)"
echo "Time: $(date): Push u instruction"
git push


