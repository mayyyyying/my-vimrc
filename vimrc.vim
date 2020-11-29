set guicursor=
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set mouse=a
set cmdheight=2
set colorcolumn=160

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tweekmonster/gofmt.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vuciv/vim-bujo'
Plug 'tpope/vim-dispatch'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'

call plug#end()

colorscheme gruvbox
set background=dark

let loaded_matchparen = 1
let mapleader = " "
let NERDTreeMinimalUI = 1

let g:go_fmt_command = "goimports"
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let $FZF_DEFAULT_OPTS='--reverse'

if executable('ag')
    " Use ag over grep "
    set grepprg=ag\ --nogroup\ --nocolor\ --column

    "Use ag in CtrlP for listing files. Lighting fast"
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    "ag is fast enough that CtrlpP doesn't need to cache"
    let g:ctrlp_use_caching = 0
endif

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
map <leader>u :UndotreeShow<CR>
nmap <leader>pf :CtrlP<CR>
nnoremap <Leader>gd :GoDef<Enter>
nnoremap <Leader>pt :NERDTreeToggle<Enter>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
