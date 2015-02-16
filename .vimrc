" Vundle settinigs
" ================
set nocompatible 		" be iMproved, required
filetype off			" required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Keep Plugin commands between vundle#begin/end
call vundle#begin()		"required

Plugin 'gmarik/Vundle.vim'	" let Vundle manages Vundle, required
Plugin 'Valloric/YouCompleteMe'	" YouCompleteMe
" Plugin 'marijnh/tern_for_vim'	" TernJS
Plugin 'altercation/vim-colors-solarized' " Solarized theme
" Plugin 'bling/vim-airline' 	" Better status line
" Plugin 'tmhedberg/SimpylFold'	" Python syntax folding
Plugin 'scrooloose/syntastic'	" Syntax, linting, etc
" Plugin 'pangloss/vim-javascript' " Somewhat improved Javascript syntax
" Plugin 'elzr/vim-json' 		" Better JSON for VIM 
" Plugin 'kien/ctrlp.vim'		" Fuzzy finding
" Plugin 'tpope/vim-commentary'	" Comment with gc
Plugin 'scrooloose/nerdtree' " NerdTree
Plugin 'fholgado/minibufexpl.vim' "MiniBufExpl
Plugin 'majutsushi/tagbar'      " Tagbar, class outline viewer
Plugin 'vim-scripts/TaskList.vim'   " TODO List
Plugin 'tpope/vim-surround'     " Delete, change, insert Surrounding
Plugin 'Raimondi/delimitMate'   " Auto-completion for quotes, brackets, etc

call vundle#end()		" required

filetype plugin indent on	" required
syntax enable

" Setup 
" ===============
" Set the terminal font encoding
set encoding=utf-8
set termencoding=utf-8

" Manage multiple buffers
set hidden

" Map leader to ,
let mapleader=","

" Omni completion
set omnifunc=syntaxcomplete#Complete

" More frequent updates for, e.g. signs
set updatetime=750

" ###################### 
" Plugins Configurations
" ######################
" Airline
" ======= 
" let g:airline_powerline_fonts = 1	" Integrating with powerline fonts

" Orange modified status
" function! AirlineThemeModified(palette)
 " let a:palette.normal_modified.airline_c =  ['#93a1a1', '#cb4b16', 254, 166, '']
 " let a:palette.insert_modified.airline_c =  ['#93a1a1', '#cb4b16', 254, 166, '']
 " let a:palette.visual_modified.airline_c =  ['#93a1a1', '#cb4b16', 254, 166, '']
 "  let a:palette.inactive_modified.airline_c = ['#cb4b16', '', 166, '', '']
" endfunction

" let g:airline_theme_patch_func = 'AirlineThemeModified'
" let g:airline#extensions#tabline#enabled = 1

" Tagbar
" ======
nmap <F8> :TagbarToggle<CR>

" Syntastic
" =========
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" Backups
" =======
set nobackup
if has("writebackup")
    set nowritebackup
endif

" Commands
" ========
" Note that these options don't really matter when using vim-powerline
if has("cmdline_info")
    "Show line and column information
    set ruler

    " Show command information in the status
    set showcmd

    " Show which mode we're in
    set showmode
endif

" CtrlP
" =====
" let g:ctrlp_map = '<c-p>'

" NERDTree
" ========
" Map F3 to toggle NERDTree
nnoremap <silent> <F3> :NERDTreeToggle<CR> 
" let g:NERDTreeWinSize=40 " Set default width for NERDTree

" MinBufExpl
" ==========
" Map TAB to switch to the next buffer
nnoremap <TAB>      :MBEbn<CR>  

" Map CTRL-TAB to switch to the previous buffer
nnoremap <leader><TAB>    :MBEbp<CR>


" Folding
" =======
" Fold with triple curly braces, fill with spaces
" if has("folding")
"    set foldenable
"    set foldmethod=marker
"    set foldopen=hor,search,tag,undo
"    set fillchars=diff:\ ,fold:\ ,vert:\
"endif

" Formatting
" ==========

" Show matching braces
set showmatch

" Spacing and tabling
" Use shiftwidth and tabstop smartly
set smarttab

" Spaces
set expandtab

" Tab width
set tabstop=8
set softtabstop=4
set shiftwidth=4

" Auto indent new lines
set autoindent

set textwidth=79

" Don't wrap text
set nowrap

" Highlight the first column after the text width
if exists("&colorcolumn")
    set colorcolumn=+1
endif

" Use only 1 space after "." when joining lines instead of 2
set nojoinspaces

au FileType c,cpp,h set cindent formatoptions+=ro
au FileType xhtml,xml,html set textwidth=0
au FileType make set noexpandtab shiftwidth=8
au FileType python set expandtab shiftwidth=4 softtabstop=4 tabstop=4 autoindent
au FileType javascript set tabstop=4 shiftwidth=4 expandtab textwidth=80

" History
" =======
set history=1000

" Key remaps
" ==========
" Completion
" inoremap <Nul> <C-X><C-P>
"
" No arrow keys
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Remove annoying F1 help, use :help instead
noremap <F1> <nop>

" Remap the windows navigation key
noremap <C-J>   <C-W>j
noremap <C-K>   <C-W>k
noremap <C-H>   <C-W>h
noremap <C-L>   <C-W>l

" Show line numbers
set number
if exists("relativenumber")
    set relativenumber
endif

" Utilities
" =========
" Use the file's name in the title
set title

" Epilog
" ======
" Turn syntax on after everything else
syntax on

" Colors Solarized Theme
" ======================
set background=dark " light
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
"let g:solarized_underline = 0
silent! colorscheme solarized
