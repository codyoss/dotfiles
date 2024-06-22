# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git)

source $HOME/.bash_profile

bindkey '[C' forward-word
bindkey '[D' backward-word
