
nnoremap <SPACE> <Nop>
let mapleader=" "

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>ft  <cmd>Telescope current_buffer_fuzzy_find<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

set number 
call plug#begin()


Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" On-demand loading
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'windwp/nvim-autopairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" vim tex
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
Plug 'Pocco81/true-zen.nvim'
Plug 'Pocco81/auto-save.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'nvim-telescope/telescope-ui-select.nvim'
Plug 'zootedb0t/citruszest.nvim'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']  " using Neovim
hi clear Conceal
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
lua << EOF
	require("true-zen").setup {}
        require("auto-save").setup {}
	require("nvim-autopairs").setup {}



EOF

let g:airline_theme='transparent'
let g:airline#extensions#tabline#enabled = 1
colorscheme citruszest

