export PATH=$PATH:/usr/local/bin:~/bin:~/.composer/vendor/bin:~/.npm-global/bin:./node_modules/.bin

[ -z "$PS1" ] && return

export HISTCONTROL=ignoreboth
export HISTSIZE=10

function homestead() {
    ( cd ~/Code/Homestead && vagrant $* )
}