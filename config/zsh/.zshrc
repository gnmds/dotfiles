#!/bin/sh

# vi mode
bindkey -v

# fzf keybinds
source "/usr/share/fzf/key-bindings.zsh"
source "/usr/share/fzf/completion.zsh"

# colors
autoload -Uz colors && colors

# completion
autoload -Uz compinit && compinit

# source prompt
source "$ZDOTDIR/prompt.zsh"

eval "$(zoxide init zsh)"
