# ~/.bashrc

[[ $- != *i* ]] && return

set -o vi

[[ -z "$TMUX" ]] && exec 'tmux' '-2'

HISTCONTROL=ignoreboth

export VISUAL=vim
export EDITOR="$VISUAL"
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code/python/

eval "$(thefuck --alias)"

source /usr/bin/virtualenvwrapper.sh
source /usr/share/git/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

PS1='\[\e[0;36m\]\u@\h\[\e[m\]\[\e[1;33m\]\w\[\e[m\]\[\e[1;34m\]$(__git_ps1 "(%s)")\[\e[m\]\[\e[1;33m\]\$\[\e[m\] '
