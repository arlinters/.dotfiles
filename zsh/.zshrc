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

if type "nvim" > /dev/null; then
	alias vim="nvim"
fi

source $HOME/.zsh_profile


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias luamake=/home/cwinters/build_tools/lua-language-server/3rd/luamake/luamake
