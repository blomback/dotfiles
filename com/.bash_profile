export PATH=$PATH:~/.composer/vendor/bin:~/.npm-global/bin

[ -z "$PS1" ] && return

DOTFILES_DIR="$HOME/.dotfiles"

for DOTFILE in "$DOTFILES_DIR"/sys/.{alias,prompt}; do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done