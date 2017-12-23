export PATH=$PATH:/usr/local/bin:~/bin:~/.composer/vendor/bin:~/.npm-global/bin:./node_modules/.bin:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin

[ -z "$PS1" ] && return

export HISTCONTROL=ignoreboth
export HISTSIZE=10

export function homestead() {
    ( cd ~/Code/Homestead && vagrant $* )
}