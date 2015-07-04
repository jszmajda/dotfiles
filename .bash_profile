#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='powerline-plain'
#export BASH_IT_THEME='sexy'

# Your place for hosting Git repos. I use this for private repos.
#export GIT_HOSTING='git@git.domain.com'

# Set my editor and git editor
export EDITOR="/usr/bin/vim"
export GIT_EDITOR='/usr/bin/vim'

# Set the path nginx
#export NGINX_PATH='/opt/nginx'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.

#export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli

export TODO="t"

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh

alias gs='git status'
alias annotate='bundle exec annotate -i -m -p before'
alias dbreset='rake db:drop db:create db:migrate db:seed; RAILS_ENV=test rake db:drop db:create db:migrate db:seed'
alias brake='bundle exec rake'
alias root='ssh -l ubuntu '
alias d='ssh -l deploy '
alias be='bundle exec '
alias pyserver="python -m SimpleHTTPServer"
alias ag='\ag --pager="less -XFR"'
alias tmux='tmux -CC'
alias ls='ls -aFG'
alias ll='ls -l'
alias g=git
alias gr=grunt
alias robot='(cd /Users/josh/src/obot; heroku ps:restart)'
alias bast='ssh jszmajda@devops-bastion.optoro.com -t "tmux attach || tmux"'
function cd() {
  builtin cd "$@";
  rm -f /Users/josh/.cwd
  echo "$PWD" > /Users/josh/.cwd 2>&1;
}
export cd
alias cwd='cd "$(cat ~/.cwd)"'

export JAVA_HOME="$(/usr/libexec/java_home)"
#export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
#export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.6.12.0/libexec"

source .bash_secrets
export EDITOR=vim
cwd
fortune

export NVM_DIR="/Users/josh/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=/Users/josh/.cabal/bin:/usr/local/bin:/usr/local/sbin:$PATH
PATH="$GEM_HOME/bin:$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
