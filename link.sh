#!/usr/bin/env zsh

make_backup() {
    FILE_PATH=$1
    mv -v $FILE_PATH $FILE_PATH.orig
    echo "Moving $FILE_PATH to $FILE_PATH.orig"
}

# Use passed arg or home path
TARGET_PATH=${1:-$HOME}

for FILE in $(ls -A dotfiles/); 
do
    TARGET_FILE=$TARGET_PATH/$FILE
    if [[ -f $TARGET_FILE && ! -f "$TARGET_FILE.orig" ]]; then
        make_backup $TARGET_FILE
    fi
    echo "Copying dotfile to $TARGET_FILE"
    cp -nv "dotfiles/$FILE" "$TARGET_FILE"
done