
call plug#begin('~/.nvim/bundle')
"------------------- File Handling ----------------------------
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
"------------------- General Pourpose -------------------------
Plug 'tpope/vim-surround'
Plug 'crusoexia/vim-monokai'
Plug 'vim-airline/vim-airline'
Plug 'tomtom/tcomment_vim'
Plug 'mbbill/undotree'
"------------------- GIT --------------------------------------
Plug 'tpope/vim-fugitive'
"-------------------- HTML ------------------------------------
Plug 'Valloric/MatchTagAlways'

"------------------- Javascript -------------------------------
Plug 'pangloss/vim-javascript'
Plug 'neoclide/vim-jsx-improve'
Plug 'ternjs/tern_for_vim'
Plug 'ycm-core/YouCompleteMe', {'do': './install.py --tern-completer'}
"------------------- Android ----------------------------------
Plug 'bpowell/vim-android'
"------------------- Python -----------------------------------
Plug 'vim-python/python-syntax'

call plug#end()
