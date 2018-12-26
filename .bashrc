# Bash aliases
alias la="ls -la"
alias ll="ls -l"

# Docker aliases
alias d="docker"
alias dc="docker-compose"
alias dcc="docker-compose config"
alias dcl="docker-compose ps"
alias dcd="docker-compose down --volumes"
alias dce="docker-compose exec"
alias dcr="docker-compose run"
alias dcsp="docker-compose stop"
alias dcst="docker-compose start"
alias dcu="docker-compose up --detach"
alias di="docker image"
alias dia="docker images --all"
alias dil="docker images"
alias dl="docker ps"
alias dla="docker ps --all"
alias dr="docker run"
alias dsp="docker stop"
alias dst="docker start"
alias dv="docker volume"
alias dvl="docker volume ls"

# nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
