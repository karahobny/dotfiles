call plug#begin('~/.config/nvim/plugged')
	" Plugins will go here in the middle.
	Plug 'godlygeek/tabular'
	Plug 'scrooloose/nerdcommenter'
	Plug 'scrooloose/nerdtree'
	Plug 'tpope/vim-fugitive'
	Plug 'raimondi/delimitmate'
	Plug 'PotatoesMaster/i3-vim-syntax'
call plug#end()
set encoding=utf-8
set fileencoding=utf-8

set modeline
set modelines=5

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

set foldmethod=indent

set splitbelow
set splitright

if !&scrolloff
	set scrolloff=3
endif
if !&sidescrolloff
	set sidescrolloff=5
endif

set nostartofline
set listchars=tab:¯¯,trail:¬,extends:>,precedes:<,nbsp:¬
set list
set autochdir
set isfname-=:
set isfname-==
set isfname-=+

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
"highlight ExtraWhitespace ctermbg=gray guibg=gray
"match ExtraWhitespace /\s\+$\|\t/
highlight Comment ctermfg=darkgray
highlight CursorLineNr ctermfg=gray
set fillchars+=vert:\ 
set diffopt+=iwhite

function! NumberToggle()
	if(&relativenumber == 1)
		set nornu
		set number
	else
		set rnu
	endif
endfunc

command W w !doas tee % > /dev/null
"command Tab Tabularize

let mapleader="\<SPACE>"

if maparg('<C-L>', 'n') ==# ''
	nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

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
vmap <Leader>p "+p
vmap <Leader>P "+P

nmap <Leader>l :bnext<CR>
nmap <Leader>h :bprevious<CR>

nmap <Leader>s :%s//g<Left><Left>
