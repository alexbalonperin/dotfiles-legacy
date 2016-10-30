" To disable a plugin, add it's bundle name to the following list
"let g:pathogen_disabled = []

"call add(g:pathogen_disabled, 'syntastic')

"pathogen to manage runtimepath for vim plugins
call pathogen#infect()
call pathogen#helptags()

set nocompatible

" ** SETTINGS **
" **************
"colorscheme desert
syntax on
"let g:solarized_termtrans=1
"let g:solarized_termcolors=16
"colorscheme solarized
colorscheme darcula
"colorscheme vividchalk
filetype plugin indent on

set autoindent sw=2 ts=2 et " autoindent with 2 spaces, set tabstop to 2, always expand tabs
set clipboard=unnamed       " use the clipboard register '*' for all operations which would normally go to the unnamed register
set backspace=indent,eol,start
set nobackup				" don't make backup
set backupdir=/tmp
set history=150				" remember 50 commands
set ruler				    " status bar
set nu					    " line numbers
set showcmd				    " show current command
set showmode				" show current mode (insert etc.)
set incsearch				" search while typing
set bg=dark				    " used with color scheme
set textwidth=120			" generate newline at col 120
set formatoptions+=ro
set smartindent				" indenting
set cindent				    " indenting
set tabstop=4				" four-space indents
set shiftwidth=4			" used with indenting
set softtabstop=4 			" -- " --
set shiftround				" -- " --
set copyindent				" -- " --
set expandtab				" convert tabs to spaces
set smartcase				" ignore case except when.. uh, :help smartcase
set foldmethod=indent		" fold using indent
set nofoldenable			" not quite sure
set foldlevel=100			" don't have anything folded at the beginning
set mouse=a				    " enable mouse
set laststatus=1			" add status bar when there are at least two windows 
set backspace=2				" not sure 
set wrap				    " wrap text around
set hlsearch
set splitright
set ignorecase
set showmatch
set fileencodings=ucs-bom,utf-8,sjis,default

let path='/web/admin'
let g:tagbar_usearrows = 1

inoremap jk <esc>

"noremap <leader>o <Esc>:CommandT /web/admin<CR>
"noremap <leader>O <Esc>:CommandTFlush /web/admin<CR>
"noremap <leader>m <Esc>:CommandTBuffer /web/admin<CR>
noremap <leader>F <Esc>:CtrlP /web/admin<CR>
noremap <leader>f <Esc>:CtrlPMixed<CR>
noremap <leader>b <Esc>:Gblame<CR>
noremap <leader>l <Esc>:TagbarToggle<CR>
nnoremap <D-F> :Ack<Space> /web/admin/app<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
nnoremap <D-N> :NERDTree /web/admin<CR>
nnoremap <D-X> :NERDTreeFind<CR>
noremap <D-K> :wincmd k<CR>
noremap <D-J> :wincmd j<CR>
noremap <D-H> :wincmd h<CR>
noremap <D-L> :wincmd l<CR>
nnoremap <D-B> g]

" Command-] jumps to tag in a new tab
nmap <D-]> :tab split<CR>:exec("tjump ".expand("<cword>"))<CR>

" Option-] jumps to tag in a vsplit window
nmap <M-]> :vsp <CR>:exec("tjump ".expand("<cword>"))<CR>

" left indent in Insert mode
imap <S-Tab> <C-O><<

"Manage file extensions directly inside Vim
command! -nargs=1 AddExt execute "saveas ".expand("%:p").<q-args>
command! -nargs=1 ChgExt execute "saveas ".expand("%:p:r").<q-args>

" ** FILETYPE SPECIFIC **
" ***********************

filetype on
augroup vimrc_filetype
	autocmd!
	autocmd FileType java,cpp,c,php,javascript nnoremap <buffer> <localleader>c I//<esc>
	autocmd FileType ruby,python       	       nnoremap <buffer> <localleader>c I#<esc>
	autocmd FileType vim			           nnoremap <buffer> <localleader>c I"<esc>

	"\c - Comment this line with html comment
	autocmd FileType html	    nnoremap <buffer> <localleader>c :s:^\s*:&<!-- :<CR>:s:$: -->:<CR>:nohls<CR> 

	"\C - Uncomment this line of html
	autocmd FileType html	    nnoremap <buffer> <localleader>C :/<!--/,/-->/s:<!-- \=\\| \=-->::g<CR>:nohls<CR>

	autocmd BufWritePost .vimrc source ~/.vimrc
	"autocmd BufWritePre *.html :normal gg=G
	
	"Abbreviations
	autocmd FileType java :iabbrev <buffer> iff if(){<CR><left><CR>}
    autocmd FileType java :iabbrev <buffer> trycatch try{<CR><CR>}catch(Exception e){<CR><CR>}
augroup end

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
" filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
" filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

