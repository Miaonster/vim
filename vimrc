syntax enable
set nocompatible
let mapleader = ","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                         "
"                                  Vundle                                 "
"                                                                         "
"                                                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off "required!
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

                      """""""""""""""""""""""""""""""""""""
                      "                                   "
                      "               Base                "
                      "                                   "
                      "                                   "
                      """""""""""""""""""""""""""""""""""""

" Basic "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'gmarik/Vundle.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'L9'


" Theme "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Solarized'


" Navigate "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'ctrlp.vim'
    nmap <c-p><c-p> :CtrlP <cr>
    nmap <c-p><c-o> :CtrlPCurWD <cr>
" Bundle 'FuzzyFinder'
" Bundle 'wincent/Command-T'



                      """""""""""""""""""""""""""""""""""""
                      "                                   "
                      "            VIM Improve            "
                      "                                   "
                      "                                   "
                      """""""""""""""""""""""""""""""""""""

" Basic "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'The-NERD-Commenter'
Bundle 'matchit.zip'


" Shortcuts "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Lokaltog/vim-easymotion'
    let g:EasyMotion_leader_key = '<Leader><Leader>'
    " usage: <Leader><Leader>fx

Bundle 'The-NERD-tree'
    nmap ,<Tab> :NERDTree <cr> :set rnu <cr>
    let NERDTreeIgnore          = ['\.$','\~$']
    let NERDTreeShowBookmarks   = 1
    let NERDTreeShowFiles       = 1
    let NERDTreeShowHidden      = 1
    let NERDTreeShowLineNumbers = 1
    let NERDTreeWinPos          = 1
    " usage: ,<Tab>

Bundle 'junegunn/vim-easy-align'
    " usage: select & <Enter>

Bundle 'nginx.vim'
    au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/*,/usr/local/etc/nginx/* if &ft == '' | setfiletype nginx | endif

" Bundle 'Valloric/YouCompleteMe'
" Bundle 'airblade/vim-gitgutter'
    " highlight clear SignColumn

 Bundle 'terryma/vim-multiple-cursors'
    let g:multi_cursor_use_default_mapping = 1
    " let g:multi_cursor_next_key='<C-n>'
    " let g:multi_cursor_prev_key='<C-p>'
    " let g:multi_cursor_skip_key='<C-x>'
    " let g:multi_cursor_quit_key='<Esc>'
    " usage: select & <C-n>


" Buffer Switcher "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'bufexplorer.zip'
    vnoremap <silent> <Enter> :EasyAlign<Enter>
    " usage: <Leader>be


" VIM StatusLine "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'bling/vim-airline'
    set laststatus=2
    highlight Search guifg=#b58900 gui=reverse guibg=NONE term=reverse ctermfg=NONE cterm=reverse ctermbg=NONE
    let g:airline_theme = 'solarized'
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#branch#enabled = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#show_buffers = 1
    let g:airline#extensions#bufferline#enabled = 1
    " let g:airline#extensions#hunks#enabled = 1


                      """""""""""""""""""""""""""""""""""""
                      "                                   "
                      "        Programming Plugins        "
                      "                                   "
                      "                                   "
                      """""""""""""""""""""""""""""""""""""

" ActionScript "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'actionscript.vim'
au BufNewFile,BufRead *.as setf actionscript

" Javascript && CSS && HTML "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'groenewege/vim-less'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'phtml.vim'
Bundle 'html5.vim'
Bundle 'HTML5-Syntax-File'
Bundle "pangloss/vim-javascript"
    let g:html_indent_inctags = "html,body,head,tbody"
    let g:html_indent_script1 = "inc"
    let g:html_indent_style1 = "inc"
Bundle 'mattn/emmet-vim'
    let g:user_emmet_leader_key='<C-m>'
    " usage: <C-m>, Zen coding
    "        <C-m>n Jump to next editable place

" Bundle 'Sass'
" Bundle 'UltiSnips'


filetype plugin indent on     " required!

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Help:                                                                   "
"   :BundleList          - list configured bundles                        "
"   :BundleInstall(!)    - install(update) bundles                        "
"   :BundleSearch(!) foo - search(or refresh cache first) for foo         "
"   :BundleClean(!)      - confirm(or auto-approve) removal of            "
"                               unused bundles                            "
"                                                                         "
" See:  :h vundle for more details or wiki for FAQ                        "
" NOTE: comments after Bundle command are not allowed..                   "
"                                                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                         "
"                                End Vundle                               "
"                                                                         "
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
set linebreak
set backspace=2
set hlsearch
set incsearch
set showmatch

set listchars=tab:▸\ ,trail:·
set list

"set mouse=a

nmap <C-S-t> :sp<bar>:b#<CR>
nmap <C-j>  :tabnext <CR>
nmap <C-k>  :tabprevious <CR>
map <F2> :nohl <CR>
map <F6> :set invpaste <CR>
map <F5> :set invnumber <CR>
nnoremap <silent> <F12> :A<CR>

set wmh=0

nmap <leader>w <c-w>
nmap <c-w>e <c-w>_
nmap <c-w>r <c-w>=

nmap <c-k> <c-w>k<c-w>=
nmap <c-j> <c-w>j<c-w>=
nmap <c-h> <c-w>h<c-w>=
nmap <c-l> <c-w>l<c-w>=

if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

    filetype plugin on
    filetype indent on

    autocmd FileType h,c,cc,cpp,sh set ts=2 sw=2 cindent expandtab
    autocmd FileType js,javascript,html,scss,css,json,less set ts=2 sw=2 autoindent expandtab
    autocmd FileType php,python,phtml set ts=4 sw=4 autoindent expandtab
    autocmd FileType as,actionscript set ts=4 sw=4 expandtab autoindent smartindent
endif
