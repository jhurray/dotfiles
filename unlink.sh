#!/usr/bin/env zsh

revert_backup() {
    mv -v $1.orig $1
    echo "Moving $1.orig to $1"
}

file_exists() {
    test -f $1
}

# Use passed arg or home path
TARGET_PATH=${1:-$HOME}

for FILE in $(ls -A dotfiles/); 
do
    rm $TARGET_PATH/$FILE
    echo "Removing $TARGET_PATH/$FILE"
    if file_exists "$TARGET_PATH/$FILE.orig"; then
        revert_backup $TARGET_PATH/$FILE
    fi
done