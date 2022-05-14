#!/bin/sh

# options
unsetopt BEEP
zle_highlight=('paste:none')
setopt autocd extendedglob nomatch menucomplete

# fzf keybinds
source "/usr/share/fzf/key-bindings.zsh"
source "/usr/share/fzf/completion.zsh"

# colors
autoload -Uz colors && colors

# completion
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
_comp_options+=(globdots)
fpath=(/usr/share/zsh/site-functions $fpath)

# source files 
source "$ZDOTDIR/zsh-prompt"
source "$ZDOTDIR/zsh-alias"
source "$ZDOTDIR/zsh-bindings"

# useful plugins
source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

eval "$(zoxide init zsh)"
