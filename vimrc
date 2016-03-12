" vim config

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Packages for customizing vim
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'sjl/gundo.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'powerline/powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Color Schemes Packages
Plugin 'altercation/vim-colors-solarized'
Plugin 'marciomazza/vim-brogrammer-theme'

" All of your Vim Plugins must be added before this line
call vundle#end()			" required
filetype plugin indent on		" required

" Syntastic Settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Default Python Interpreter to call
let g:syntastic_python_python_exec = '/usr/bin/python3.4'

" Default HTML5 Checker
let g:syntastic_html_tidy_exec = 'tidy5'

" Python Linting
let g:syntastic_python_checkers = ['pylint']

" Aggregate all errors
let g:syntastic_aggregate_errors = 1


" Color Scheme Config
"
" Current => [Brogrammer]
"
syntax enable
set background=dark
colorscheme brogrammer
let g:solarized_termcolors=256


" Paste Mode
set pastetoggle=<F2>


" vim-powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2
set t_Co=256

" Nerd Tree Config
map <C-n> :NERDTreeToggle<CR>
" autocmd vimenter * NERDTree

" Nerd Tree Git Plugin Config
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" Easy Navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Natural Split Openings
set splitbelow
set splitright
