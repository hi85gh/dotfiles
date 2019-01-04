# Bash aliases
alias la="ls -la"
alias ll="ls -l"

# Docker aliases
alias d="docker"
alias dc="docker-compose"
alias dcc="docker-compose config"
alias dcd="docker-compose down --volumes"
alias dce="docker-compose exec"
alias dcl="docker-compose ps"
alias dcr="docker-compose run"
alias dcsp="docker-compose stop"
alias dcst="docker-compose start"
alias dcu="docker-compose up --detach"
alias de="docker exec"
alias di="docker image"
alias dia="docker images --all"
alias dil="docker images"
alias dl="docker container ls" # docker ps
alias dla="docker container ls --all" # docker ps --all
alias dr="docker run"
alias dsp="docker stop"
alias dst="docker start"
alias dv="docker volume"
alias dvl="docker volume ls"

# Git
function git_zip() {
  if [ "$2" = "" ]; then
    git archive --format=zip --prefix=archive/ HEAD `git diff --diff-filter=d --name-only $1 HEAD` -o archive.zip
  else
    git archive --format=zip --prefix=archive/ $1 `git diff --diff-filter=d --name-only $2 $1` -o archive.zip
  fi
}

# nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
