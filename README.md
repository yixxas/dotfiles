**Configurations are set according to current macOS versions. Will update in future to be more universal.**

## Tmux setup
Requirements: tmux -V >= 1.9  

1) git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm  
2) tmux source ~/.tmux.conf  
3) vim ~/.tmux.conf  
4) hit prefix + I to fetch plugin and source it  

## Vim8 native plugin manager
1) git clone any plugins into $HOME/.vim/pack/plugins/start/ (eager loading) or $HOME/.vim/pack/plugins/opt/ (lazy loading)
