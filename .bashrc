# Bash
alias la="ls -la"
alias ll="ls -l"

# CircleCI
alias ci="circleci"
alias cicv="circleci config validate"

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
alias dcdv="docker-compose down --volumes"
alias dce="docker-compose exec"
alias dcl="docker-compose ps"
alias dcr="docker-compose run"
alias dcsp="docker-compose stop"
alias dcst="docker-compose start"
alias dcu="docker-compose up --detach"

# Git
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

function git_zip() {
  if [ "$2" = "" ]; then
    git archive --format=zip --prefix=archive/ HEAD `git diff --diff-filter=d --name-only $1 HEAD` -o archive.zip
  else
    git archive --format=zip --prefix=archive/ $1 `git diff --diff-filter=d --name-only $2 $1` -o archive.zip
  fi
}

# npm
alias ncu="npx npm-check-updates"

# nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Sublime Merge
alias smerge="\"/Applications/Sublime Merge.app/Contents/SharedSupport/bin/smerge\""
