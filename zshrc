source $HOME/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle hlissner/zsh-autopair

antigen theme half-life

antigen apply

# Aliases
alias nv=nvim
alias c=clear
alias m="git checkout master"
alias t="git checkout test"
