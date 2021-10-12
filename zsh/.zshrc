
source ~/.zsh-plugins/.antigen.zsh
antigen use oh-my-zsh

#Bundles from the default repo
antigen bundle git
antigen bundle docker
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Synatx highlighting bundle
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme robbyrussell

antigen apply

source $HOME/.zsh_profile
