"Cosmetic configurations
if has ("syntax")
    syntax on
endif


colorscheme smyck

if version >= 700
    highlight statusLine cterm=bold ctermfg=15 ctermbg=8
    au InsertEnter * hi StatusLine cterm=bold ctermfg=231 ctermbg=196
    au InsertLeave * hi StatusLine cterm=bold ctermfg=15 ctermbg=8
endif

"Highlight column when line length reaches the 80th character
highlight ColorColumn ctermbg=magenta ctermfg=black
call matchadd('ColorColumn', '\%79v', 100)

"Reassignments
inoremap kj <esc>
inoremap <esc> <nop>

"Shortcuts
let mapleader="-"
nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>c I//
nnoremap <leader>h :call GOVIMHover()<cr>
nnoremap <Tab> :bnext<cr>
nnoremap <S-Tab> :bprevious<cr>
nnoremap <f2> :sp <Bar> :Explore<cr>
nnoremap <leader>html :-1read $HOME/MyDots/templates/template.html<cr>6jwf>a
nnoremap J mzJ`z

"Improve search
"nnoremap <f3> :set hls!<cr> same as below but old version
map <F3> :set hls!<Bar>set hls?<CR>
nnoremap n nzz
nnoremap N Nzz

"Navigating splits
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

"Set configuration
set encoding=utf-8
set visualbell
set relativenumber
set number
set laststatus=2
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=0
set smartindent
set undolevels=20
set wrapmargin=0
set nowrap
set ignorecase
set smartcase
set incsearch
set showmatch
set showcmd
set bomb
set cursorline
filetype indent on

"For govim
set nocompatible
set nobackup
set nowritebackup
set noswapfile

filetype plugin on

set mouse=a
set ttymouse=sgr
set updatetime=500
set balloondelay=250
set signcolumn=yes
autocmd! BufEnter,BufNewFile *.go syntax on
autocmd! BufLeave *.go syntax off
set backspace=2


"Access godoc in vim
command! -nargs=* -complete=shellcmd G new | setlocal buftype=nofile bufhidden=hide noswapfile | r !go doc <args>

"For text and documents.
autocmd BufRead,BufNewFile *.txt set textwidth=80
