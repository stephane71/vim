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
Plugin 'mattn/emmet-vim'
Plugin 'marijnh/tern_for_vim'

Plugin 'Lokaltog/vim-easymotion'
	" find {char} to the right
	map _s <Plug>(easymotion-s) 
	" beginning of word forward
	map _f <Plug>(easymotion-w)

Plugin 'scrooloose/nerdtree'
	nnoremap <silent> <F9> :NERDTreeToggle<CR>
	map <tab> gt

Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline' " pretty  status/tabline 
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'
Plugin 'scrooloose/nerdcommenter'

""""""""""""""""""""""""""""""""""""""""""""""""""
" javascript specifics bundles 
" voir http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'Raimondi/delimitMate'
	imap <C-c> <CR><Esc>O

Plugin 'Valloric/YouCompleteMe'
	" These are the tweaks I apply to YCM's config, you don't need them but they
	" might help.
	" " YCM gives you popups and splits by default that some people might not
	" like, so these should tidy it up a bit for you.
	let g:ycm_add_preview_to_completeopt=0
	let g:ycm_confirm_extra_conf=0
	set completeopt-=preview

Plugin 'https://github.com/Lokaltog/vim-distinguished'
	set t_Co=256
	syntax on
	set background=dark
	colorscheme distinguished

Plugin 'szw/vim-ctrlspace'
	set hidden

Plugin 'scrooloose/syntastic'
let g:syntastic_check_on_open=1

call vundle#end()
filetype plugin indent on   " détecter le type de fichiers 

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS 
