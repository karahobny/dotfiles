call plug#begin('~/.config/nvim/plugged')
	Plug 'godlygeek/tabular'
	Plug 'scrooloose/nerdcommenter'
	Plug 'scrooloose/nerdtree'
	Plug 'tpope/vim-fugitive'
	Plug 'vim-syntastic/syntastic'
	Plug 'raimondi/delimitmate'
	Plug 'PotatoesMaster/i3-vim-syntax'
	Plug 'dylanaraps/wal.vim'
call plug#end()

set encoding=utf-8
set fileencoding=utf-8
set clipboard^=unnamed,unnamedplus

set modeline
set modelines=2

set ttimeout
set ttimeoutlen=100
set ignorecase
set smartcase
set gdefault

filetype indent on
set autoindent
set smartindent

set showmatch
set number
set formatoptions+=o
set tabstop=4
set shiftwidth=4
set linespace=0
set nojoinspaces
set cursorline
set ruler

set foldmethod=syntax
set foldlevelstart=99

set splitbelow
set splitright

if !&scrolloff
	set scrolloff=3
endif
if !&sidescrolloff
	set sidescrolloff=5
endif

set nostartofline
set listchars=tab:◗◗,trail:⋆,extends:>,precedes:<,nbsp:⋆
set list
set autochdir
set isfname-=:
set isfname-==
set isfname-=+

set statusline=\ \ \ \ %F\ %y\ %m
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1

if &undolevels < 200
	set undolevels=200
endif

set wildmode=list:longest
set wildchar=<TAB>

if &t_Co == 8 && $TERM !~# '^linux'
	set t_Co=16
endif
color term
"colorscheme wal
"highlight ExtraWhitespace ctermbg=gray guibg=gray
"match ExtraWhitespace /\s\+$\|\t/
highlight Comment ctermfg=darkgray
"highlight CursorLineNr ctermfg=gray
highlight Cursorline ctermbg=black ctermfg=2
highlight Statusline ctermbg=black cterm=none ctermfg=2
highlight StatuslineNC ctermbg=none cterm=none ctermfg=black
highlight VertSplit cterm=none ctermfg=black
set diffopt+=iwhite
set fillchars+=vert:║,stl:,stlnc:

function! NumberToggle()
	if(&relativenumber == 1)
		set nornu
		set number
	else
		set rnu
	endif
endfunc

command! W w !doas tee %
command! Tab Tabularize
command! S source ~/.config/nvim/init.vim

let mapleader="\<SPACE>"

if maparg('<C-L>', 'n') ==# ''
	nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

inoremap kj <ESC>
inoremap jk <ESC>
nnoremap ; :
nnoremap <CR> G
nnoremap <BS> gg
nnoremap j gj
nnoremap k gk
inoremap <C-E> <End>
inoremap <C-A> <Home>
nnoremap <Leader><Tab> <c-w>w

nnoremap <Leader>r :call NumberToggle()<cr>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>t :Tabularize / \zs<CR>

map <C-n> :NERDTreeToggle<CR>

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P

nmap <Leader>l :bnext<CR>
nmap <Leader>h :bprevious<CR>

" global substitution
nmap <Leader>s :%s//g<Left><Left>

" split navigation
inoremap <A-h>           <C-\><C-N><C-w>h
inoremap <A-j>           <C-\><C-N><C-w>j
inoremap <A-k>           <C-\><C-N><C-w>k
inoremap <A-l>           <C-\><C-N><C-w>l
nnoremap <A-h>           <C-w>h
nnoremap <A-j>           <C-w>j
nnoremap <A-k>           <C-w>k
nnoremap <A-l>           <C-w>l

" terminal
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
au TermOpen * setlocal nonumber
tnoremap <Esc> <C-\><C-n>
tnoremap jk    <C-\><C-n>
tnoremap kj    <C-\><C-n> 
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
