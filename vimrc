"Cosmetic configurations
if has ("syntax")
    syntax on
endif

colorscheme koehler

if version >= 700
    highlight statusLine cterm=bold ctermfg=16 ctermbg=57
    au InsertEnter * hi StatusLine cterm=bold ctermfg=231 ctermbg=196
    au InsertLeave * hi StatusLine cterm=bold ctermfg=16 ctermbg=57
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
nnoremap <f2> :Explore<cr>
nnoremap <f3> :set hls!<cr>
nnoremap <leader>html :read $HOME/MyDots/templates/template.html<cr>6jwf>a

"Navigating splits
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

"Set configuration
set background=dark
set encoding=utf-8
set visualbell
set relativenumber
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
set ignorecase
set smartcase
set incsearch
set showmatch
set showcmd
set hlsearch

"Access godoc in vim
command! -nargs=* -complete=shellcmd G new | setlocal buftype=nofile bufhidden=hide noswapfile | r !go doc <args>
