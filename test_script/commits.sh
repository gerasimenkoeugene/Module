#!/bin/bash
REPO=$1
NOW=$(date +'%d-%m-%Y-%r')
BRANCH_INDEX=$master

git checkout master
git pull

for i in {1..45}
do
    echo "text2" > ${BRANCH_INDEX}_${i}.txt
    git add .
    git commit -m "added "${BRANCH_INDEX}_${i}" "   
	git push 	
done

