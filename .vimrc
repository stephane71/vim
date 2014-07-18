set nocompatible
set ts=4
au BufRead,BufNewFile *.hbs setfiletype html
set ruler			" affiche la position courante au sein du fichier

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

""""""""""""""""""""""""""""""""""""""""""""""""""
" My Bundles here:
""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'gmarik/vundle'
Bundle 'mattn/emmet-vim'
Bundle 'marijnh/tern_for_vim'

Bundle 'Lokaltog/vim-easymotion'
	" find {char} to the right
	map _s <Plug>(easymotion-s) 
	" beginning of word forward
	map _f <Plug>(easymotion-w)

Bundle 'scrooloose/nerdtree'
	nnoremap <silent> <F9> :NERDTreeToggle<CR>
	map <tab> gt

Bundle 'taglist.vim'
	nnoremap <silent> <F8> :TlistToggle<CR>
	set statusline=%<%f%=%([%{Tlist_Get_Tagname_By_Line()}]%)
	let Tlist_Exit_OnlyWindow = 1		" vim se ferme si il reste uniquement la fenêtre des tags
	let Tlist_Process_File_Always = 1	" activation permanente du plugin pour la barre de statut
	let Tlist_Use_Right_Window = 1		" affiche les tags sur le côté droit de l'écran


""""""""""""""""""""""""""""""""""""""""""""""""""
" javascript specifics bundles 
" voir http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'

Bundle 'Raimondi/delimitMate'
	imap <C-c> <CR><Esc>O

Bundle 'Valloric/YouCompleteMe'
	" These are the tweaks I apply to YCM's config, you don't need them but they
	" might help.
	" " YCM gives you popups and splits by default that some people might not
	" like, so these should tidy it up a bit for you.
	let g:ycm_add_preview_to_completeopt=0
	let g:ycm_confirm_extra_conf=0
	set completeopt-=preview

Bundle 'https://github.com/Lokaltog/vim-distinguished'
	set t_Co=256
	syntax on
	set background=dark
	colorscheme distinguished

filetype plugin indent on   " détecter le type de fichiers 

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS 
