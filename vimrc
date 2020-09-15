set encoding=utf-8                  " required
set nocompatible                    " required
filetype plugin indent on 			" required
syntax on 					        " required

" mouse settings
if has('mouse')
  set mouse=a
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Color theme
Plugin 'jnurmine/Zenburn'
Plugin 'morhetz/gruvbox'

" Code Fold
Plugin 'tmhedberg/SimpylFold'

" Super Tab
Plugin 'ervandew/supertab'


" nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Super Searching
Plugin 'kien/ctrlp.vim'

" Git Integration
Plugin 'tpope/vim-fugitive'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Polyglot - all languages support
Plugin 'sheerun/vim-polyglot'

" Autocompleter
Plugin 'valloric/youcompleteme'

" Syntax check
Plugin 'scrooloose/syntastic'

" Flake8
Plugin 'nvie/vim-flake8'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" split preferences
set splitbelow
set splitright

" backspace config
set backspace=indent,eol,start

" display column number
set ruler

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" View DocString for folded code
let g:SimpylFold_docstring_preview=1

" Remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" set numbers
set nu
set rnu

" set incremental search
set incsearch

" clipboard config
set clipboard=unnamed

" set encoding
set encoding=utf-8
" au BufNewFile,BufRead *.py
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=119
set expandtab
set autoindent
set fileformat=unix
"
" " html/js/css indentations
" au BufNewFile,BufRead *.js, *.html, *.css
"     \ set tabstop=2 |
"     \ set softtabstop=2 |
"     \ set shiftwidth=2

" define a map leader
let mapleader = "\<Space>"

" python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"   project_base_dir = os.environ['VIRTUAL_ENV']
"   activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"   execfile(activate_this, dict(__file__=activate_this))
" EOF

" python syntax highlighting
let python_highlight_all=1

syntax on

" theme enable
colorscheme gruvbox

" nerdtree config
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
autocmd VimEnter * NERDTree | wincmd p
map <C-n> :NERDTreeToggle<CR>


" SimplyFold
let g:SimpylFold_docstring_preview=1

" Autorun Flake8 on writing Python files
autocmd BufWritePost *.py call Flake8()
let g:flake8_show_in_gutter=1
let g:flake8_error_marker='EE'     " set error marker to 'EE'
let g:flake8_warning_marker='WW'   " set warning marker to 'WW'
let g:flake8_pyflake_marker=''     " disable PyFlakes warnings
let g:flake8_complexity_marker=''  " disable McCabe complexity warnings
let g:flake8_naming_marker='NN'    " disable naming warnings

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_aggregate_errors = 1

" filetype based syntastic checkers
let g:syntastic_python_checkers = ['flake8']

" always show a status line
set laststatus=2

" c lang tools
let  g:C_UseTool_cmake = 'yes'
let  g:C_UseTool_doxygen = 'yes'

" disable clangd and use libclang
" let g:ycm_use_clangd = 0
let g:ycm_global_ycm_extra_conf = '/Users/saurabh/.vim/bundle/youcompleteme/third_party/ycmd/ycmd/.ycm_extra_conf.py'
