#!/bin/bash

GIT_DIR=/srv/git

for repo in $(ls $GIT_DIR | grep '.git'); do
    cd $GIT_DIR/$repo
    echo "-> Examining $(pwd)..."
    git fetch origin
    git push github --all
done

for repo in $(ls $GIT_DIR | grep '.hg'); do
    cd $GIT_DIR/$repo
    echo "-> Examining $(pwd)..."
    hg pull default
    hg push github
done
