export PATH=$PATH:/usr/local/bin:~/bin:~/.composer/vendor/bin:~/.npm-global/bin

[ -z "$PS1" ] && return

DOTFILES_DIR="$HOME/.dotfiles"

for DOTFILE in "$DOTFILES_DIR"/sys/.{alias,prompt,osx}; do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done

export HISTCONTROL=ignoreboth
export HISTSIZE=10