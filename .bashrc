#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd 			# change to named directory
shopt -s cdspell 			# autocorrects cd misspellings
shopt -s cmdhist 			# save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend 		# do not overwrite history
shopt -s expand_aliases 	# expand aliases


[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

PS1='[\u@\h \W]\$ '

