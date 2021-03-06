set path+=**
set wildmode=longest,list,full
set wildmenu
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

set nohls

set relativenumber

set tabstop=2
set shiftwidth=2
set termguicolors

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" lsp plugins
Plug 'neoclide/coc.nvim', {'branch':'release'}
" bettter syntax highlighting for filetypes
Plug 'sheerun/vim-polyglot'

" theming
Plug 'dracula/vim',{'name':'dracula'}

" DX
Plug 'tmhedberg/SimpylFold'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter',{'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()


" color schemes
if (has("termguicolors"))
	set termguicolors
endif
syntax enable
colorscheme dracula

" split navigations
" Move below
nnoremap <C-J> <C-W><C-J>
" Move to the split above
nnoremap <C-K> <C-W><C-K>
" Move to the split on the right
nnoremap <C-L> <C-W><C-L>
" Move to the spliut on the left
nnoremap <C-H> <C-W><C-H>


" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1

" leader mappings
let mapleader = " "
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>pv :Ex<CR>
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

" Buffer shortcut remaps
" Buffer List
nnoremap <leader>bl :buffers 

" Telescope remaps
nnoremap <leader>ff :lua require"telescope.builtin".find_files({hidden = true })<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Nerdtree remap
nnoremap <leader>ft :NERDTreeFocus<CR>

" COC Jump Definition bindings
nnoremap <leader> gs :call CocAction('jumpDefinition', 'split')<CR>
nnoremap <leader> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
nnoremap <leader>gt :call CocAction('jumpDefinition', 'tabe')<CR>



" Set indentation on filetypes
" python
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

" html, js, css
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Flag unnecessary whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" utf 8 support
set encoding=utf-8
