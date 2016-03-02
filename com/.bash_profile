export PATH=$PATH:/usr/local/bin:~/bin:~/.composer/vendor/bin:~/.npm-global/bin:./node_modules/.bin

[ -z "$PS1" ] && return

DOTFILES_DIR="$HOME/.dotfiles"

for DOTFILE in "$DOTFILES_DIR"/sys/.{alias,prompt}; do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

export HISTCONTROL=ignoreboth
export HISTSIZE=10