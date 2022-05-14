#!/usr/bin/zsh

# default programs
export EDITOR='nvim'
export MANPAGER='nvim +Man!'
export PAGER='less'

# xdg variables
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# zsh variables
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/zsh/zhistory"
export HISTSIZE=5000
export SAVEHIST=5000

# add pip user programs to path
path+=("$HOME/.local/bin")
export PATH

# variables for home directory clean up
export LESSHISTFILE=-
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"

if [ -f "$HOME/.xprofile" ]; then
	source "$HOME/.xprofile"
fi
