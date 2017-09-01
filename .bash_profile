# terminal format
export PS1='[\e[0;34m\]\u\[\e[m\] @ \h : \w \[\e[0;31m\]\t\[\e[m\]]\n$ '
# terminal autocomplete
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# aliases
alias ll='ls -lGa'

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'

#DB start aliases
#alias mongostart='sudo mongod --fork --logpath ~/www/server/mongo.log'
#alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
#alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# paths
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/bin:$PATH";

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

eval "`npm completion`"