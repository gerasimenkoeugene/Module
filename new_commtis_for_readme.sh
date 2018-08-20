#!/bin/bash
REPO=$1
NOW=$(date +'%d-%m-%Y-%r')
BRANCH_INDEX=$(<counter.txt)

for i in {1..4}
do
    echo  ${i} >> "README.md"
    git add "README.md" 
    git commit -m "commit ${i} "    
done

git push 
#git push

sleep 30