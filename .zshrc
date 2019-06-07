if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
bindkey "\e[3~" delete-char
bindkey  "^[[H" beginning-of-line
bindkey  "^[[F" end-of-line

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/matvey/.zshrc'

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ":completion:*:commands" rehash 1
# End of lines added by compinstall

# <colors>
autoload -Uz colors && colors

for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
    eval $COLOR='%{$fg_no_bold[${(L)COLOR}]%}'
    eval BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done
eval RESET='%{$reset_color%}'
# </colors>

export VISUAL=vim
export EDITOR="$VISUAL"
export LESSCHARSET=UTF-8

. /home/matvey/.aliases


setopt autocd
setopt extended_glob
setopt interactive_comments
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt prompt_subst

# <git prompt>
. /usr/share/git/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
# </git prompt>


PROMPT='${BOLD_YELLOW}%~${GREEN}$(__git_ps1 "(%s)")${CYAN}➜  ${RESET}'
# export RPROMPT='${BOLD_YELLOW}[%*]${RESET}'
