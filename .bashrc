# ~/.bashrc

[[ $- != *i* ]] && return

set -o vi

[[ -z "$TMUX" ]] && exec 'tmux' '-2'

export VISUAL=vim
export EDITOR="$VISUAL"
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code/python/
source /usr/bin/virtualenvwrapper.sh

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

PS1='\[\e[0;36m\]\u@\h\[\e[m\]\[\e[1;33m\]\w\[\e[m\]$ '
