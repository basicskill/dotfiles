" Dobar lik: https://gitlab.com/quebin31/dotfiles/blob/master/nvim/.config/nvim/init.vim
let g:mapleader = ","
set nocompatible

" Plugins {{{
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'scrooloose/nerdtree'
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/goyo.vim'
    Plug 'Yggdroot/indentLine'
    " Plug 'tyru/caw.vim' " TODO: proceniti korisnost
    " Plug 'tpope/vim-fugitive' " TODO: pročitati dokumentaciju!
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
call plug#end()
" }}}



" GUI {{{
" colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
set cursorline
set guicursor=
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set clipboard=unnamed

set hidden
set nu
set encoding=UTF-8
" Airline
" let g:airline_powerline_fonts = 1
" let g:airline_theme = 'dracula'
" let g:airline#extensions#coc#enabled = 1

" Indent line
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" }}}

" Section Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=marker
hi Folded ctermbg=NONE
nnoremap <leader><space> za
" }}}

" Misc {{{
let g:NERDTreeWinPos = "right"
noremap <F3> :NERDTreeToggle<CR>
command! PlugU PlugUpdate | PlugUpgrade

" VIM related
noremap <M-w> <C-w>
set completeopt-=preview
noremap <M-Q> :bd<CR>
noremap ; :


noremap <Esc> :noh<Enter>i<Esc>
nnoremap <leader>l :source $MYVIMRC<CR>

command! Trans execute srpski#Zameni()

" Savin' folds
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

" Trailing spaces
command! RemoveTrailing :%s/\s\+$//e
" }}}

" CoC {{{
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" }}}
