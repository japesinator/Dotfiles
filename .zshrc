# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
# Path
plugins=(zsh-syntax-highlighting brew vagrant encode64 git last-working-dir pip tmux web-search)
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:/bin:/usr/local/sbin:/sbin:/usr/bin:/opt/X11/bin:/usr/sbin:/Users/jp/Library/Haskell/bin:$PATH
export GOPATH=$HOME/golang/packages/
# Set name of the theme to load.
export ZSH_THEME=agnoster
# Use oh-my-zsh
source $ZSH/oh-my-zsh.sh
# Fix some broken stuff
DISABLE_AUTO_UPDATE=true
CORRECT_IGNORE='fortune, cowsay, toilet, figlet'
# Load plugins
alias hack="fortune | cowsay -p | toilet -F gay -f term" music="mpd && mpc update && ncmpcpp"

insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo

alias please='sudo sh -c "$(fc -ln -1)"'
alias vim /usr/local/bin/vim
