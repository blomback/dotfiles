#!/bin/sh

# get current dir
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# update dotfiles from repo
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# run setup files
for DOTFILE in "$DOTFILES_DIR"/setup/.{osx}; do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done

# symlinks

ln -sfv "$DOTFILES_DIR/com/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~