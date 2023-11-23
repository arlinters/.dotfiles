# Using latest nvim build
Follow build instructions from the (neovim Wiki)[https://github.com/neovim/neovim/wiki/Building-Neovim]

## Installing Plugins
`:PlugInstall` from a nvim process.

## YouCompleteMe
On new installations, make sure to install the needed interpreters. Typically the filepath is in `~/.vim/plugged/YouCompleteMe` and run `python3 install.py --clangd-completer --ts-completer` to cover most use cases.

If you start using Java, Go, C#, Rust, etc. those will need to be installed. Here is the (general usage wiki)[https://github.com/ycm-core/YouCompleteMe#general-usage]

# Next steps
Migrate to a new plugin ecosystem, reconfigure Mason + lsp-zero
