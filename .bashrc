# Remove duplicates in history
export HISTCONTROL=ignoredups

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

#export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33'
