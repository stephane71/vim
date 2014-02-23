set nocompatible
set ts=4
filetype off
set ruler			" affiche la position courante au sein du fichier
"set autoindent		" indentation automatique avancée
"set smartindent		" indentation plus intelligente

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)


" My Bundles here:
" "
" " original repos on github
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
" vim-scripts repos
Bundle 'taglist.vim'
" scripts not on GitHub
Bundle 'git://git.wincent.com/command-t.git'


filetype plugin indent on   " required


""""""""""""""""""""""""""""""""""""""""""""""""""
"taglist plugin
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F8> :TlistToggle<CR>
set statusline=%<%f%=%([%{Tlist_Get_Tagname_By_Line()}]%)
let Tlist_Exit_OnlyWindow = 1		" vim se ferme si il reste uniquement la fenêtre des tags
let Tlist_Process_File_Always = 1	" activation permanente du plugin pour la barre de statut
let Tlist_Use_Right_Window = 1		" affiche les tags sur le côté droit de l'écran

""""""""""""""""""""""""""""""""""""""""""""""""""
"NERDTree plugin
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F9> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
"Map pour se déplacer dans les onglets
""""""""""""""""""""""""""""""""""""""""""""""""""
map <tab> gt

""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS 

