#!/usr/bin/zsh

# default programs
export EDITOR='nvim'
export MANPAGER='nvim +Man!'
export PAGER='less'
export TERMINAL='st'
export BROWSER='brave'
export READER='zathura'

# xdg variables
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# zsh variables
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/zsh/history"
export HISTSIZE=5000
export SAVEHIST=5000

# add user programs to path
path+=("$HOME/.local/bin")
export PATH

# variables for home directory clean up
export LESSHISTFILE=-
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export XAUTHORITY="${XDG_DATA_HOME:-$HOME/.local/share}/X11/XAuthority"

# execute startx on login
if [ -z "${ZDISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec startx "${XDG_CONFIG_HOME:-$HOME/.config}/X11/xinitrc"
fi
