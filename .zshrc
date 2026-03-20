# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
COMPLETION_WAITING_DOTS="true"



plugins=(git)

source $ZSH/oh-my-zsh.sh


# export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
# export ARCHFLAGS="-arch $(uname -m)"
export EDITOR="nvim"
export MANPAGER='nvim +Man!'
export SUDO_EDITOR="nvim"

alias vim='nvim'
alias cat='bat'
alias sudo='sudo '
alias nvim=~/.local/bin/padded_nvim.sh

pathadd() {
    newelement=${1%/}
    if [ -d "$1" ] && ! echo $PATH | grep -E -q "(^|:)$newelement($|:)" ; then
        if [ "$2" = "after" ] ; then
            PATH="$PATH:$newelement"
        else
            PATH="$newelement:$PATH"
        fi
    fi
}

pathadd "$PWD/.cargo/bin"
pathadd "$PWD/.local/bin/"

clear && fastfetch && echo && echo

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
