# shellcheck shell=bash
# Manis Aliases - Sourced for shell productivity

# Git
alias gst='git status'
alias gco='git checkout'
alias gcm='git commit -m'
alias gaa='git add -A'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'

# Docker
alias dps='docker ps'
alias dcu='docker compose up'
alias dcd='docker compose down'
alias dlogs='docker logs -f'
alias dclogs='docker compose logs -f'
alias dex='docker exec -it'
alias dprune='docker system prune -af --volumes'

# Navigation/Utilities
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -lah'
alias paux='ps -aux'
alias cls='clear && ls'

# Manis Tools
alias chonk='heavy'
alias bigs='heavy'
alias info='sysinfo'

# Functions
take() {
    mkdir -p "$1" && cd "$1" || return
}

ports() {
    lsof -iTCP -sTCP:LISTEN -P
}
