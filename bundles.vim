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

if !exists("g:override_bundles")
	" colorschemes
	if count(g:bundle_groups, 'colorschemes')
		Bundle 'altercation/vim-colors-solarized' " Solarized Colorscheme
		Bundle 'spf13/vim-colors' " Colorscheme sets
		Bundle 'vim-scripts/ScrollColors' " colorscheme Scroller/Chooser/Browser
	endif

	" general
	if count(g:bundle_groups, 'general')
		Bundle 'scrooloose/nerdtree' " NERD Tree
		Bundle 'fholgado/minibufexpl.vim' " Minibufferexpl
	endif

	" programming
	if count(g:bundle_groups, 'programming')
	endif

	" ruby-rails
	if count(g:bundle_groups, 'ruby-rails')
	endif

	" web	
	if count(g:bundle_groups, 'web')
	endif

	" misc
	if count(g:bundle_groups, 'misc')
	endif
endif

filetype plugin indent on     " required!
