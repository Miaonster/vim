set nocompatible
syntax enable

" Vundle which is short for *Vim Bundle*
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

" Plugins
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'The-NERD-Commenter'
Bundle 'matchit.zip'
Bundle 'ctrlp.vim'
Bundle 'lunaru/vim-less'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Bundle 'Sass'
"Bundle 'UltiSnips'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'bling/vim-airline'
set laststatus=2
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'actionscript.vim'
au BufNewFile,BufRead *.as setf actionscript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'vim-multiple-cursors'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Solarized'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Bundle 'The-NERD-tree'
"设置相对行号
"nmap <Tab><Tab> :NERDTree<cr>:set rnu<cr>
"let NERDTreeShowBookmarks=1
"let NERDTreeShowFiles=1
"let NERDTreeShowHidden=1
"let NERDTreeIgnore=['\.$','\~$']
"let NERDTreeShowLineNumbers=1
"let NERDTreeWinPos=1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle "pangloss/vim-javascript"
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'ZenCoding.vim'
let g:user_zen_leader_key = '<S-Tab>'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<Leader><Leader>'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on     " required!
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
"  see :h vundle for more details or wiki for FAQ
"  NOTE: comments after Bundle command are not allowed..
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" END Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set backspace=indent,eol,start
set number
set ru

"colorscheme murphy
"colorscheme desert
"colorscheme slate

set fileencodings=utf-8,cp936,latin1,ucs-bom
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8

set ignorecase
set expandtab
set tabstop=4
set shiftwidth=4
"set autoindent
"set smartindent
"set cindent

"set textwidth=80
"set linebreak
set backspace=2
set hlsearch
set incsearch
set showmatch

func SetEncodingUTF8()
    :set encoding=utf8
    :set termencoding=gbk
endfun

nmap <C-q> <C-q> = :tabnext <ESC>
map  <F11>     :call SetEncodingUTF8() <CR>
imap <F11>     <Esc>:call SetEncodingUTF8() <CR>
map <F2> :nohl <CR>
map <F6> :set invpaste <CR>
map <F5> :set invnumber <CR>
nnoremap <silent> <F12> :A<CR>

if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

    filetype plugin on
    filetype indent on

    autocmd FileType h,c,cc,cpp set ts=2 sw=2 cindent expandtab
    autocmd FileType js,javascript,html,scss,css,json set ts=2 sw=2 noautoindent expandtab
    autocmd FileType php,python,sh set ts=4 sw=4 cindent expandtab
    autocmd FileType as,actionscript set ts=4 sw=4 expandtab autoindent smartindent
endif

let mapleader = ","
