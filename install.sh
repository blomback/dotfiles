#!/bin/sh

# get current dir
export dotfiles_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# update dotfiles from repo
[ -d "$dotfiles_dir/.git" ] && git --work-tree="$dotfiles_dir" --git-dir="$dotfiles_dir/.git" pull origin master


[ -d ~/.oh-my-zsh ] || sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# download base16 themes
[ -d ~/.config/base16-shell ] || git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# run global setup files
for file in "$dotfiles_dir"/{.aliases}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done

# macos specific settings
if [ "$(uname)" == "Darwin" ]; then
  for file in "$dotfiles_dir"/{.macos,.sublime,.nvm}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
  done;
  unset file;
fi;


# symlinks
ln -sfv "$dotfiles_dir/.bash_profile" ~
ln -sfv "$dotfiles_dir/.zshrc" ~
ln -sfv "$dotfiles_dir/.vimrc" ~
ln -sfv "$dotfiles_dir/.gvimrc" ~
ln -sfv "$dotfiles_dir/.gitconfig" ~
ln -sfv "$dotfiles_dir/.hushlogin" ~
ln -sfv "$dotfiles_dir/.tmux.conf" ~

# oh my zsh themes
ln -sfv "$dotfiles_dir/oh-my-zsh/themes/blomback.zsh-theme" ~/.oh-my-zsh/themes/blomback.zsh-theme

unset dotfiles_dir;
unset nvm_dir;
