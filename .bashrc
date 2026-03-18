#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias c="clear"
alias y="yazi"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias yi="yay -S"
alias sp="sudo pacman -S"
alias yr="yay -R"
alias sr="sudo pacman -R"
alias update="sudo pacman -Syu"
alias S="sudo"
alias n="nvim"
alias f="fastfetch"
alias nr="niri msg action load-config-file"
alias cdn="cd ~/.config/niri/"




PS1='[\u@\h \W]\$ '
export PATH="$HOME/.local/bin:$PATH"
alias dotfiles='/usr/bin/git --git-dir=/home/seth/.dotfiles/ --work-tree=/home/seth'
