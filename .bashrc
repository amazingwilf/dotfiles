#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

eval $(keychain --eval id_ed25519)

PS1='[\u@\h \w]\$ '

fortune -s
echo
