#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export VISUAL=vim
export EDITOR="$VISUAL"

#pywal uses previous theme on new terminals
wal -R && clear

#add Directory to path
export PATH="/home/A/.scripts:$PATH"
export PATH="/home/A/.local/bin:$PATH"

#aliases
alias pac='sudo pacman'
#alias lf='sudo lf'
alias suck='sudo make uninstall && sudo make clean install'
alias open='xdg-open'
alias record='ffmpeg -f x11grab -s 3840x2160 -i :0.0 ~/Videos/out.mkv'

#vim mode
set -o vi
bind '"jj":vi-movement-mode'

#starship (custom bash prompt)
eval "$(starship init bash)"

#all icons for lf file manager (nerd fonts)
source ~/.config/lf/icons

