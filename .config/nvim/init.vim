
source ~/.config/nvim/plugs.vim
source ~/.config/nvim/coc.vim

filetype plugin indent on
syntax on
set softtabstop=4 " number of spaces when tab is pressed
set shiftwidth=2
set number
set relativenumber
set showcmd
set cursorline " highlight the line that the cursor is currently on
set autoread
set ignorecase
set wildmenu
set lazyredraw
set showmatch " highlight match of {([

set incsearch " search while characters are entered
set hlsearch " highlight matching words

set foldmethod=syntax
set foldlevelstart=99
let javaScript_fold=1
colorscheme monokai

source ~/.config/nvim/mappings.vim
source ~/.config/nvim/plugs-config.vim

set laststatus=2

au FileType vim set foldmethod=manual


