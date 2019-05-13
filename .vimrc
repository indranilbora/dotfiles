set laststatus=2
set encoding=utf-8

set incsearch
set hlsearch

set number " show line number
set cursorline
set scrolloff=5

set foldmethod=indent
set foldlevel=99
set backspace=indent,eol,start
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set indentkeys+=O,o
set noshowmode " remove status line info
set wrap
set linebreak
set ignorecase
set smartcase

let g:netrw_banner = 0
let g:netrw_liststyle = 0
let g:netrw_list_hide = '^\./$,^\.\./$'
let g:netrw_hide = 1
let g:netrw_sort_by = 'name'
let g:netrw_sort_direction = 'normal'
let g:netrw_localrmdir='rm -r'

set wildmenu

" PATTERN IGNORING
set wildignore+=*.zip,*.png,*.jpg,*.gif,*.pdf,*DS_Store*,*/.git/*,*/node_modules/*,*/build/*,*/.next/*,*/__snapshots__/*,*/flow-typed/*,*/priv/*,*/deps/*,package-lock.json
set grepprg=grep\ -In\ --exclude-dir={.git,node_modules,build,.next,__snapshots__,flow-typed,priv,deps}\ --exclude=package-lock.json

" SPELLCHECK
set spelllang=en
set complete+=kspell
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell
autocmd BufRead,BufNewFile */blog/* setlocal spell
autocmd FileType gitcommit setlocal spell

" CLIPBOARD
set clipboard=unnamed

" PERFORMANCE
set synmaxcol=200

" PYTHON SETTINGS

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" ==================================================================
" PLUGIN MANAGEMENT
" ==================================================================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" COLOR SCHEME
Plugin 'KeitaNakamura/neodark.vim'

Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'morhetz/gruvbox'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-sensible'
Plugin 'kien/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'nvie/vim-flake8'

Bundle 'Valloric/YouCompleteMe'

" EXTENDED LANGUAGES
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" EXTENDED % MATCHING
Plugin 'tmhedberg/matchit'

" SNIPPETS
Plugin 'KeyboardFire/vim-minisnip'

" INLINE LINTING/TYPE CHECKING/FORMATTING
Plugin 'w0rp/ale'

Plugin 'kshenoy/vim-signature'

call vundle#end()

" ==================================================================
" CUSTOM REMAP SETTINGS
" ==================================================================
inoremap jj <ESC>  " remap jj to escape in insert mode
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>  " remove all trailing whitespace by pressing F5

" move vertically by visual line (don't skip wrapped lines) 
nnoremap j gj
nnoremap k gk

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding with the spacebar
nnoremap <space> za

let g:lightline = {
    \ 'colorscheme': 'gruvbox',
      \ 'separator': { 'left': '▓▒░', 'right': '░▒▓' },
        \ 'subseparator': { 'left': '▒', 'right': '░' }
          \ }
          
" leader is comma
let mapleader=","

" turn off search highlight with ,-<space>
nnoremap <leader><space> :nohlsearch<CR>

" Invoke Ctrl-p with c-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" ==================================================================
" PLUGIN CONFIG
" ==================================================================

runtime! plugin/sensible.vim

" EXTENDED LANGUAGES
let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1

" INLINE LINTING/TYPE CHECKING/FORMATTING
let g:ale_linters = {
\  'javascript': ['eslint', 'flow', 'prettier'],
\}
let g:ale_fixers = {
\  'javascript': ['eslint', 'prettier'],
\}
let g:ale_javascript_prettier_options = '--no-semi --single-quote --trailing-comma es5'
let g:ale_fix_on_save = 1

let python_highlight_all = 1
syntax on


set background=dark
colorscheme gruvbox
hi vertsplit ctermfg=238 ctermbg=235
hi LineNr ctermfg=237
hi StatusLine ctermfg=235 ctermbg=245
hi StatusLineNC ctermfg=235 ctermbg=237
hi Search ctermbg=58 ctermfg=15
hi Default ctermfg=1
hi clear SignColumn
hi SignColumn ctermbg=235
hi GitGutterAdd ctermbg=235 ctermfg=245
hi GitGutterChange ctermbg=235 ctermfg=245
hi GitGutterDelete ctermbg=235 ctermfg=245
hi GitGutterChangeDelete ctermbg=235 ctermfg=245
hi EndOfBuffer ctermfg=237 ctermbg=235

set statusline=%=&P\ %f\ %m
set fillchars=vert:\ ,stl:\ ,stlnc:\
set noshowmode
