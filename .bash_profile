export PATH=$PATH:/usr/local/bin:~/bin:~/.composer/vendor/bin:~/.npm-global/bin:./node_modules/.bin:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin:/usr/local/opt/python/libexec/bin
export LANG=en_US.UTF-8

[ -z "$PS1" ] && return

export HISTCONTROL=ignoreboth
export HISTSIZE=10

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

