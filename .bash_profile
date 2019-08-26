# git-prompt.sh
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"

export PATH="/usr/local/sbin:$PATH"
export PS1='\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\] \$ '
export NVM_DIR="$HOME/.nvm"

[[ -f ~/.bashrc ]] && . ~/.bashrc
