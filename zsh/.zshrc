
export ZSH=$HOME/.oh-my-zsh
export DOTFILES=$HOME/.dotfiles
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"
source ~/.zsh-plugins/.antigen.zsh
antigen use oh-my-zsh

#Bundles from the default repo
antigen bundle git
antigen bundle docker
antigen bundle nvm
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Synatx highlighting bundle
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme robbyrussell

antigen apply

if type "nvim" > /dev/null; then
	alias vim="nvim"
fi

source $HOME/.zsh_profile


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias luamake=/home/cwinters/build_tools/lua-language-server/3rd/luamake/luamake
