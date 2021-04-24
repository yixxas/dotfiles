#ls the last created file and cd into it
alias lslast='ls -Utd */ | head -n1'
alias cdlast='cd $(lslast)'

alias rm='echo "Use trash-put instead."; false'

# change zsh name
export PS1="$: "

# enables vi mode in zsh
bindkey -v

# enable forward and backwards i search
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward

# bind keys to escape key in insert mode
bindkey -M viins 'jj' vi-cmd-mode
