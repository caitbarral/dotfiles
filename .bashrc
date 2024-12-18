#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# use cli password prompt for gpg
GPG_TTY=$(tty)
export GPG_TTY

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
export PATH="$HOME/.rbenv/shims:$PATH"
. "$HOME/.cargo/env"

set XDG_CURRENT_DESKTOP=sway
set EDITOR=nvim

alias ls='ls --color=auto'
alias icat='kitty +kitten icat'
alias grep='grep --color=auto'
alias beep="echo $'\a'"
alias nv='nvim'

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
