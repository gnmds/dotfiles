#!/bin/sh

# git status
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

# prompt
PROMPT='%(?.%F{green}%#%f .%F{red}%B%?>%f%b )'
RPROMPT='%F{cyan}%1~ %F{green}${vcs_info_msg_0_}%f'
zstyle ':vcs_info:git:*' formats '%b'
