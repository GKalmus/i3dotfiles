PROMPT='%m %(?.%F{green}[%~].%F{red}[%~])%f %# '

autoload -Uz compinit
compinit

zstyle ':completion:*:*:kill:*:processes' command 'ps -x'
zstyle :compinstall filename '~/.zshrc'

HISTFILE=~/.history_zsh
HISTSIZE=100000
SAVEHIST=100000

setopt appendhistory notify
unsetopt beep
bindkey -e

bindkey '^R' history-incremental-search-backward
bindkey '^[[1;5D' emacs-backward-word
bindkey '^[[1;5C' emacs-forward-word
bindkey '^H' backward-kill-word
bindkey '5~' kill-word

alias vim="nvim"
alias ls="ls --color=auto "
alias sudo="sudo "
alias neofetch="neofetch --disable title theme icons "
