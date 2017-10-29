set laststatus=2

set incsearch

set number " show line number
set cursorline
set scrolloff=5

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

" ==================================================================
" PLUGIN MANAGEMENT
" ==================================================================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" COLOR SCHEME
Plugin 'KeitaNakamura/neodark.vim'


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
Plugin 'arcticicestudio/nord-vim'
Plugin 'dracula/vim'

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
inoremap jj <ESC> " remap jj to escape in insert mode
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>  " remove all trailing whitespace by pressing F5

let g:nord_italic_comments = 1
colorscheme dracula 

let g:lightline = {
    \ 'colorscheme': 'Dracula',
      \ 'separator': { 'left': '▓▒░', 'right': '░▒▓' },
        \ 'subseparator': { 'left': '▒', 'right': '░' }
          \ }

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

syntax on
