#!/bin/sh

# get current dir
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export SUBLIME_DIR=$DOTFILES_DIR/sublime

# update dotfiles from repo
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# run setup files

for DOTFILE in "$DOTFILES_DIR"/{alias,macos}; do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm



# symlinks

ln -sfv "$DOTFILES_DIR/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/.zshrc" ~
ln -sfv "$DOTFILES_DIR/.vimrc" ~
ln -sfv "$DOTFILES_DIR/.gvimrc" ~
ln -sfv "$DOTFILES_DIR/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/.hushlogin" ~

# oh my zsh themes
ln -sfv "$DOTFILES_DIR/oh-my-zsh/themes/gitster.zsh-theme" ~/.oh-my-zsh/themes/gitster.zsh-theme

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

unset SUBLIME_DIR
unset DOTFILES_DIR
unset NVM_DIR