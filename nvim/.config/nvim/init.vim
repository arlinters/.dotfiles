set relativenumber

set tabstop=2
set shiftwidth=2
set termguicolors

call plug#begin('~/.vim/plugged')
Plug 'dracula/vim'
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



let mapleader = " "
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>pv :Ex<CR>
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

" Telescope remaps
nnoremap <leader>ff :lua require"telescope.builtin".find_files({hidden = true })<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Nerdtree remap
nnoremap <leader>ft :NERDTreeFocus<CR>
