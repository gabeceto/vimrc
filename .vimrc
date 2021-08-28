syntax on
set backspace=2
set clipboard=unnamedplus
set number
set mouse=a
set showcmd
set ruler
set encoding=utf8
set showmatch
set sw=4
set rnu
let mapleader=" "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
set guioptions+=a

call plug#begin('~/.vim/plugged')
"Temas"
Plug 'srcery-colors/srcery-vim'

"Ide"
Plug 'easymotion/vim-easymotion'

"NerdTree"
Plug 'preservim/nerdtree'

Plug 'christoomey/vim-tmux-navigator'

"Sintaxis python"
Plug 'ycm-core/YouCompleteMe'

"Buscar por palabra o fichero"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Plegado de código"
Plug 'tmhedberg/SimplyFold'

call plug#end()

"Atajo de teclado para NERDTREE"
nmap <Leader>nt :NERDTreeFind<CR>

"Atajo de teclado para buscar palabra"
nmap <Leader>s <Plug>(easymotion-s2)

"Atajo de teclado para ejecutar python"
nmap zr <ESC>:w<ESC>:!python3 %<CR>
imap zr <ESC>:w<ESC>:!python3 %<CR>

"Atajo para guardar"
nmap .w <CR>:w <CR>
imap .w <ESC>:w <ESC>a

"Atajo para salir"
nmap .q <CR>:q <CR>
imap .q <ESC>:q <ESC>a

"Atajo que simplifica el ESC"
imap zo <Esc>

"Atajo para buscar por fichero"
nmap .a <CR>:Files<CR>
imap .a <ESC>:Files <CR>

"Configuracion moverme entre archivos"
nnoremap <C-L> <C-W> <C-L>
nnoremap <C-H> <C-W> <C-H>

"Atajo que cambia el hjkl por jklñ"
nnoremap j h
nnoremap l j
nnoremap k k
nnoremap ñ l

"Atajo para ir al final de una linea"
nmap .f <S-a>
imap .f <ESC><S-a>

"Atajo para ir al inicio de una linea"
nmap zi 0
imap zi <ESC>0

"Tema"
colorscheme srcery
let g:srcery_italic = 1
