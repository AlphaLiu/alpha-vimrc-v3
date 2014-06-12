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
	let g:bundle_groups=['general', 'programming', 'ruby-rails', 'web', 'misc']
endif

if !exists("g:override_bundles")
	" general
	if count(g:bundle_groups, 'general')
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
