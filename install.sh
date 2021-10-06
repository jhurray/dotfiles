#!/usr/bin/env zsh

SOURCE="https://github.com/jhurray/dotfiles"
TARGET="$HOME/.dotfiles"

is_executable() {
  type "$1" > /dev/null 2>&1
}

if is_executable "git"; then
  CMD="git clone $SOURCE $TARGET"
  echo "Installing dotfiles..."
  mkdir -p "$TARGET"
  eval "$CMD"
else;
  echo "Git not available. Aborting."
fi

cd $TARGET
chmod -v 755 "link.sh" "unlink.sh"

echo "Link dotfiles to $HOME? [Y/y]"
read INPUT
if [ $INPUT = "Y" -o $INPUT = "y" ]; then
  exec "./link.sh"
else
  echo "Run './link.sh <directory>' to link dotfiles to said directory."
fi