# terminal format
export PS1='[\e[0;34m\]\u\[\e[m\] @ \h : \w \[\e[0;31m\]\t\[\e[m\]]\n$ '
# terminal autocomplete
complete -o default -o nospace -W "$(/usr/bin/env ruby -ne 'puts $_.split(/[,\s]+/)[1..-1].reject{|host| host.match(/\*|\?/)} if $_.match(/^\s*Host\s+/);' < $HOME/.ssh/config)" scp sftp ssh node
# git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
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

export NVM_DIR="/Users/yuri/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# set tab name
function title {
  echo -ne "\033]0;"$*"\007"
}

export EDITOR='vim'
source ~/.bash_npm;
