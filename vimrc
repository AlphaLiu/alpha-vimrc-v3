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
  "no error bells
  set noerrorbells
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
"Key (re)mapping {
  let mapleader = ","
  let g:mapleader = ","
  map <C-j> <C-W>j
  map <C-k> <C-W>k
  map <C-h> <C-W>h
  map <C-l> <C-W>l
  map <C-i> <C-W><C-W>
"}
