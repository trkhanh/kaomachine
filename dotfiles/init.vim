" ╔════════════════════════════════════════════════════════════════════════════╗
" ║                                                                            ║
" ║                           ██╗   ██╗██╗███╗   ███╗                          ║
" ║                           ██║   ██║██║████╗ ████║                          ║
" ║                           ██║   ██║██║██╔████╔██║                          ║
" ║                           ╚██╗ ██╔╝██║██║╚██╔╝██║                          ║
" ║                            ╚████╔╝ ██║██║ ╚═╝ ██║                          ║
" ║                             ╚═══╝  ╚═╝╚═╝     ╚═╝                          ║
" ║                                                                            ║
" ║    * github.com/trkhanh8 * twitter.com/tkhanh8 * trkhanh8@gmail.com *      ║
" ║                                                                            ║
" ╚════════════════════════════════════════════════════════════════════════════╝

" ╔════════════════════════════════════════════════════════════════════════════╗
" ║ Plugs                                                                      ║
" ╚════════════════════════════════════════════════════════════════════════════╝

call plug#begin('~/.local/share/nvim/plugged)

Plug 'ayu-theme/ayu-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'leafgarland/typescript-vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'elixir-lang/vim-elixir'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'docker/docker'
Plug 'moll/vim-node'
Plug 'heavenshell/vim-syntax-flowtype'
Plug 'wincent/command-t'
Plug 'junegunn/goyo.vim'
Plug 'Yggdroot/indentLine'

call plug#end()

" ╔════════════════════════════════════════════════════════════════════════════╗
" ║ Theme                                                                      ║
" ╚════════════════════════════════════════════════════════════════════════════╝

set termguicolors
let ayucolor="dark"
colorscheme ayu

function! ChangeColorscheme(scheme)
	let g:ayucolor=a:scheme
	colorscheme ayu
endfunction


map <C-a>1 :call ChangeColorscheme("light")<CR>
map <C-a>2 :call ChangeColorscheme("mirage")<CR>
map <C-a>3 :call ChangeColorscheme("dark")<CR>

let g:indentLine_enabled = 1
let g:indentLine_char = '⋮'
let g:indentLine_first_char = '⋮'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

" ╔════════════════════════════════════════════════════════════════════════════╗
" ║ NERDTree                                                                   ║
" ╚════════════════════════════════════════════════════════════════════════════╝
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-k><C-b> :NERDTreeToggle<CR>


" ╔════════════════════════════════════════════════════════════════════════════╗
" ║ Syntastic                                                                  ║
" ╚════════════════════════════════════════════════════════════════════════════╝
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" ╔════════════════════════════════════════════════════════════════════════════╗
" ║ Typescript                                                                 ║
" ╚════════════════════════════════════════════════════════════════════════════╝

" typescript-vim
let g:typescript_indent_disable = 1


" ╔════════════════════════════════════════════════════════════════════════════╗
" ║ Various                                                                    ║
" ╚════════════════════════════════════════════════════════════════════════════╝

set encoding=utf-8
set number
set backspace=2
set showmatch
set showmode
syntax on
syntax enable
set clipboard=unnamed

map <C-c><C-c> :qa!<CR>
map <C-s><C-s> :w<CR>
map <C-s><C-f> :w!<CR>
map <C-s><C-q> :wq<CR>

