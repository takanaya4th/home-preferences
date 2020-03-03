#lang
export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
#nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH
#grep
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/grep/libexec/gnuman:$MANPATH"

if [ "Darwin" = 'Darwin' ]; then
    alias ls='ls -G'
else
    eval `dircolors ~/.colorrc`
    alias ls='ls --color=auto'
fi
alias la='ls -a'
alias ll='ls -l'
alias tree='tree -C'

#dockerコマンド
alias ds='docker ps'
alias de='~/.bashs/docker-bash.sh'
alias docker-purge='docker stop $(docker ps -q) && docker rmi $(docker images -q) -f'

#docker-composeコマンド
alias dcstart='docker-compose start'
alias dcstop='docker-compose stop'
alias dcup='docker-compose up -d'
alias dcdown='docker-compose down'

#Git補完機能
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '

