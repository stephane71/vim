set nocompatible
set ts=4
au BufRead,BufNewFile *.hbs setfiletype html
set ruler			" affiche la position courante au sein du fichier
let mapleader = ","

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
""""""""""""""""""""""""""""""""""""""""""""""""""
" My Plugins here:
""""""""""""""""""""""""""""""""""""""""""""""""""

" emmet for vim: http://emmet.io/ http://mattn.github.io/emmet-vim
Plugin 'mattn/emmet-vim'

" Tern plugin for Vim
Plugin 'marijnh/tern_for_vim'
	let g:tern_map_keys=1
	let g:tern_show_argument_hints='on_hold'

" A tree explorer plugin for vim
Plugin 'scrooloose/nerdtree'
	nnoremap <silent> <F9> :NERDTreeToggle<CR>
	map <tab> gt

" Vim plugin for the Perl module / CLI script 'ack'
Plugin 'mileszs/ack.vim'

" pretty  status/tabline 
Plugin 'bling/vim-airline' 
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'

" Vim plugin for intensely orgasmic commenting
Plugin 'scrooloose/nerdcommenter'

" Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
Plugin 'Raimondi/delimitMate'
	imap <C-c> <CR><Esc>O

" Vim Workspace Controller
Plugin 'szw/vim-ctrlspace'
	set hidden

" A Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks.
Plugin 'airblade/vim-gitgutter'

""""""""""""""""""""""""""""""""""""""""""""""""""
" javascript specifics bundles 
" voir http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
""""""""""""""""""""""""""""""""""""""""""""""""""
" Beautifier for javascript
Plugin 'einars/js-beautify'
Plugin 'maksimr/vim-jsbeautify'
	"let g:editorconfig_Beautifier=expand("<sfile>:p:h").'/.editorconfig'

Plugin 'jelera/vim-javascript-syntax'
"Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'

"Plugin 'Valloric/YouCompleteMe'
	" These are the tweaks I apply to YCM's config, you don't need them but they
	" might help.
	" " YCM gives you popups and splits by default that some people might not
	" like, so these should tidy it up a bit for you.
   " let g:ycm_add_preview_to_completeopt=0
	"let g:ycm_confirm_extra_conf=0
	"set completeopt-=preview

Plugin 'https://github.com/Lokaltog/vim-distinguished'
	set t_Co=256
	syntax on
	set background=dark
	colorscheme distinguished

Plugin 'scrooloose/syntastic'
	" npm install -g jshint
	let g:syntastic_check_on_open=1
	
call vundle#end()
filetype plugin indent on   " détecter le type de fichiers 

"au FileType javascript call JavaScriptFold()
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS 
