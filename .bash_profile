#expand alias to vim
shopt -s expand_aliases

alias python=/Library/Frameworks/Python.framework/Versions/3.7/bin/python3.7
#ls the last created file and cd into it
alias lslast='ls -Utd */ | head -n1'
alias cdlast='cd $(lslast)'
#allow i-search in macos
stty -ixon

alias rm='echo "Use trash-put instead."; false'

#change bash name
export PS1="\W$: "

#enables vi mode in bash
set -o vi

#disables j and k key in command/normal mode
bind -m vi-command -r j
bind -m vi-command -r k

#bind jj to escape key in insert mode
bind -m vi-insert '"jj":"\e"'

