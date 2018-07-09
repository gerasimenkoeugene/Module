#!/bin/bash
REPO=$1
NOW=$(date +'%d-%m-%Y-%r')
BRANCH_INDEX=$master

git checkout master
git pull

for i in {1..5}
do
    echo "text1" > ${BRANCH_INDEX}_${i}.txt
    git add .
    git commit -m "added "${BRANCH_INDEX}_${i}" "    
done

git push 
#git push

git checkout master

echo $(($BRANCH_INDEX + 1)) > ../scripts/counter.txt

sleep 30