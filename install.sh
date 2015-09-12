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

# sublime settings
ln -sfv "$DOTFILES_DIR/sublime/AdvancedNewFile.sublime-settings" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/AdvancedNewFile.sublime-settings
ln -sfv "$DOTFILES_DIR/sublime/Base File.sublime-settings" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Base\ File.sublime-settings
ln -sfv "$DOTFILES_DIR/sublime/Package Control.sublime-settings" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
ln -sfv "$DOTFILES_DIR/sublime/Preferences.sublime-settings" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings