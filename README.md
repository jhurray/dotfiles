# dotfiles
My personal dotfiles

## Installation

1. Install this repo with `curl`:

```bash
zsh -c "`curl -fsSL https://raw.githubusercontent.com/jhurray/dotfiles/master/install.sh`"
```

This will clone or download, this repo to `~/.dotfiles` depending on the availability of `git`.

Follow the prompts to link the appropriate dotfiles.

2. Alternatively, clone manually into the desired location:

```bash
git clone https://github.com/jhurray/dotfiles.git ~/.dotfiles

cd ~/.dotfiles

chmod -v 755 "link.sh"

./link.sh
```

## Uninstalling

```bash
cd ~/.dotfiles

./unlink.sh

rm -rf ~/.dotfiles
```
