"General {
set nocompatible
"filetype detect and indent
filetype plugin indent on
"encoding
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"background color
set background=dark
"syntax autocomplete
syntax enable
"syntax highlight
syntax on
"When the buffer is modified, 'autowrite' is on
set hidden
"history count
set history=50
"nobackup
set nobackup
set noswapfile

"Vim UI {
  "show current mode
  set showmode
  "highlight cursor line
  set cursorline
  if has('cmdline_info')
    "show ruler
    set ruler
    "ruler format
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
    "show command
    set showcmd
  endif
  "show file name
  set title
  "backspace
  set backspace=indent,eol,start
  "No extra spaces between rows
  set linespace=0
  "show line number
  set nu
  "when a bracket is inserted, briefly jump to the matching one
  set showmatch
  "search when input
  set incsearch
  "highlight search results
  set hlsearch
  "windows can be 0 line high
  set winminheight=0
  "ignorecase
  set ignorecase
  "override the 'ignorecase' option if the search pattern contains upper case characters
  set smartcase
  "lines to scroll when cursor leaves screen
  set scrolljump=5
  "minimum lines to keep above and below cursor
  set scrolloff=3
  "auto fold code
  set foldenable
  "Set 7 lines to the curors - when moving vertical..
  set so=7
  "The commandbar is 1 high
  set cmdheight=1
  "命令行下按tab键自动完成
  set wildmode=list:full
  set wildmenu
  set laststatus=2
"}
"Formatting {
  "tabwidth
  set shiftwidth=2
  set softtabstop=2
  set tabstop=2
  set backspace=2
  set smarttab
  set expandtab
  set lbr

  "Auto indent
  set ai
  "Smart indet
  set si
  "C-style indenting
  set cindent

  "wrap
  set wrap
  "带有如下符号的单词不要被换行分割
  set iskeyword+=_,$,@,%,#,-
  "backspace and cursor keys wrap to
  set whichwrap=b,s,h,l,<,>,[,]

  "no bells
  set noerrorbells
  set novisualbell
  set t_vb=
"}

"Vim action {
  "Source the vimrc file after saving it
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
"}
"
"matchit.vim {
  runtime macros/matchit.vim
"}

"Key (re)mapping {

  "change the <Leader> key to ,
  let mapleader = ","
  let g:mapleader = ","

  map <C-j> <C-W>j
  map <C-k> <C-W>k
  map <C-h> <C-W>h
  map <C-l> <C-W>l
  map <C-i> <C-W><C-W>

  "Fast edit the .vimrc file using ,x
  nnoremap <Leader>x :edit $MYVIMRC<CR>

  "remap key jj as ESC key in insert mode
  imap jj <Esc>

  "auto skip 1 char in insert mode
  imap <F12> <Esc>la

  "Tab configuration
  map <leader>tn :tabnew .<cr>
  map <leader>tc :tabclose<cr>
  map <leader>tm :tabn<cr>
  map <leader>tp :tabp<cr>

  "close buffer
  nmap <leader>q :bd<cr>

  "quick save
  nmap <leader>w :w!<cr>

  "Wrapped lines goes down/up to next row, rather than next line in file.
  nnoremap j gj
  nnoremap k gk

  "clear search highlight
  nmap <silent> <leader>/ :nohlsearch<CR>

  "For when you forget to sudo.. Really Write the file.
  cmap w!! w !sudo tee % >/dev/null
"}

"vim-color {
  "Default Colorscheme
  colorscheme molokai
"}
"MinibufferExpl {
  let g:miniBufExplModSelTarget = 1
  let g:miniBufExplUseSingleClick = 1
  let g:miniBufExplMapWindowNavVim = 1
  let g:miniBufExplMapWindowNavArrows = 1
  let g:miniBufExplMapCTabSwitchBufs = 1
  "let g:miniBufExplorerMoreThanOne = 1
"}

"NerdTree {
  map <F4> :NERDTreeToggle<cr>
  "map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
  map <leader>e :NERDTreeFind<CR>
  let NERDTreeShowBookmarks=1
  let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
  let NERDTreeChDirMode=0
  let NERDTreeQuitOnOpen=0
  let NERDTreeShowHidden=0
  let NERDTreeKeepTreeInNewTab=1
  let NERDTreeWinPos = "left"
  let NERDTreeMapChangeRoot="cc"
  "Open NERDTree when vim open without arguments
  autocmd vimenter * if !argc() | NERDTree | endif
"}

