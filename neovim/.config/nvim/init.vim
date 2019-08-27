call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'terryma/vim-expand-region'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
Plug 'junegunn/fzf.vim'

call plug#end()

" VIM settings
set number
set updatetime=100
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=15

" GIT
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow

" Airline
let g:airline#extensions#tabline#enabled = 1

" Mouse support
set mouse=a

" Auto closing brackets
inoremap {  {}<Left>
inoremap (  ()<Left>
inoremap [  []<Left>

" Indent multiple lines
xnoremap <Tab> >gv
xnoremap <S-Tab> <gv

" Disable cut for d
nnoremap d "_d
vnoremap d "_d

let mapleader = " "
nnoremap <silent> <Leader><Space> :Files<CR>

" Move lines
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" Switch buffers with TAB
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0


"set termguicolors
"syntax on

let g:gruvbox_contrast_dark = "hard"

"set background=dark
colorscheme gruvbox
