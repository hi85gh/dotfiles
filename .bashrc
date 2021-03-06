# Bash
alias c='clear'
alias l1="ls -1"
alias la="ls -la"
alias ll="ls -l"
alias ls="ls -G"
alias o='open .'

# Docker
alias d="docker"
alias dcp="docker cp"
alias de="docker exec"
alias di="docker image"
alias dil="docker images"
alias dila="docker images --all"
alias dl="docker container ls" # docker ps
alias dla="docker container ls --all" # docker ps --all
alias dr="docker run"
alias dsp="docker stop"
alias dst="docker start"
alias dv="docker volume"
alias dvl="docker volume ls"

# Docker Compose
alias dc="docker-compose"
alias dcb="docker-compose build"
alias dcc="docker-compose config"
alias dcd="docker-compose down"
alias dcda="docker-compose down --rmi all --volumes"
alias dcdv="docker-compose down --volumes"
alias dce="docker-compose exec"
alias dcl="docker-compose ps"
alias dcr="docker-compose run"
alias dcsp="docker-compose stop"
alias dcst="docker-compose start"
alias dcu="docker-compose up"
alias dcud="docker-compose up --detach"

# Git
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

function git-zip() {
  if [ "$2" = "" ]; then
    git archive --format=zip --prefix=archive/ HEAD `git diff --diff-filter=d --name-only $1 HEAD` -o archive.zip
  else
    git archive --format=zip --prefix=archive/ $1 `git diff --diff-filter=d --name-only $2 $1` -o archive.zip
  fi
}

# npm
source /usr/local/etc/bash_completion.d/npm

alias ncu-install="npm install --global npm-check-updates"
alias ncu-i="ncu-install"
alias ncu-uninstall="npm uninstall --global npm-check-updates"
alias ncu-un="ncu-uninstall"
alias ncu-update="ncu-install"
alias ncu-up="ncu-install"

# nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

function nvm-upgrade() (
  cd "$NVM_DIR"
  git fetch --tags origin
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

# Sublime Merge
alias sme="\"/Applications/Sublime Merge.app/Contents/SharedSupport/bin/smerge\" ."
alias smerge="\"/Applications/Sublime Merge.app/Contents/SharedSupport/bin/smerge\""
