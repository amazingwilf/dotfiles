export EDITOR=nvim
export VISUAL=nvim
export ADW_DISABLE_PORTAL=1

alias pacman='doas pacman'
alias update='pacman -Syy'
alias query='pacman -Syu'

alias list='pacman -Qqe'		# explicitly installed
alias listt='pacman -Qqet'		# as above, no deps
alias listaur='pacman -Qqem'	# AUR packages

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

alias ..='cd ..'
alias ...='cd ../../'

alias cdc='cd $HOME/.config'
alias cdd='cd $HOME/Projects/dwm'
alias cds='cd $HOME/Projects'

alias ls='exa -al --color=always --group-directories-first --icons=always'
alias la='exa -a --color=always --group-directories-first --icons=always'
alias ll='exa -l --color=always --group-directories-first --icons=always'
alias lt='exa -aT --color=always --group-directories-first --icons=always'
alias l='exa -lah --color=always --group-directories-first --icons=always'

alias na='$EDITOR $HOME/.bash_aliases'
alias nb='$EDITOR $HOME/.bashrc'
alias nd='$EDITOR $HOME/Projects/dwm/config.def.h'
alias ng='$EDITOR $HOME/.config/ghostty/config.ghostty'
alias nm='$EDITOR $HOME/.config/mango/config.conf'
alias nx='$EDITOR $HOME/.Xresources'

alias c='clear'
alias h='cd $HOME'
alias s='source $HOME/.bashrc'
alias x='exit'

alias desk='cd $HOME/Desktop'
alias docs='cd $HOME/Documents'
alias dlds='cd $HOME/Downloads'
alias music='cd $HOME/Music'
alias pics='cd $HOME/Pictures'
alias vids='cd $HOME/Videos'

alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push origin master'
alias gs='git status'

alias merge='xrdb -merge $HOME/.Xresources'
alias mall='make clean && make && doas make install'
alias xev='xev -rv'
alias df='df -h'
alias free='free -mt'
alias wget='wget -c'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias confadd='config add'
alias confcom='config commit -a -m'
alias confpush='config push origin master'
