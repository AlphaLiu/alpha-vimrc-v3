set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
if executable('ack')
  Bundle 'mileszs/ack.vim'
endif

if !exists('g:bundle_groups')
  let g:bundle_groups=['colorschemes', 'general', 'programming', 'ruby-rails', 'web', 'misc']
endif

" To override all the included bundles, put
if !exists("g:override_bundles")
  " colorschemes
  if count(g:bundle_groups, 'colorschemes')
    Bundle 'altercation/vim-colors-solarized'
    Bundle 'spf13/vim-colors'
    Bundle 'vim-scripts/ScrollColors'
  endif

  " general
  if count(g:bundle_groups, 'general')
    Bundle 'scrooloose/nerdtree'
    Bundle 'fholgado/minibufexpl.vim'
  endif

endif

filetype plugin indent on     " required!
