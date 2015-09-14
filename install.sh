#!/bin/sh

# get current dir
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export SUBLIME_DIR="$DOTFILES_DIR/sublime"

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
ln -sfv "$SUBLIME_DIR/AdvancedNewFile.sublime-settings" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/AdvancedNewFile.sublime-settings
ln -sfv "$SUBLIME_DIR/Base File.sublime-settings" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Base\ File.sublime-settings
ln -sfv "$SUBLIME_DIR/Package Control.sublime-settings" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
ln -sfv "$SUBLIME_DIR/Preferences.sublime-settings" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
ln -sfv "$SUBLIME_DIR/Default (OSX).sublime-keymap" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap

if [ ! -d ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/builds ]; then
	ln -sfv "$SUBLIME_DIR/builds/" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/builds > /dev/null 2>&1;
fi

if [ ! -d ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/snippets ]; then
	ln -sfv "$SUBLIME_DIR/snippets/" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/snippets > /dev/null 2>&1;
fi