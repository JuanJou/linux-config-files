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
Plug 'justinmk/vim-sneak'
Plug 'honza/vim-snippets'

"------------------- GIT --------------------------------------
Plug 'tpope/vim-fugitive'
"-------------------- HTML ------------------------------------
Plug 'Valloric/MatchTagAlways'
"------------------- Javascript -------------------------------
Plug 'pangloss/vim-javascript'
Plug 'neoclide/vim-jsx-improve'
"------------------- TypeScript -------------------------------
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"------------------- Android ----------------------------------
Plug 'hsanson/vim-android'
"------------------- Vue -----------------------------------
Plug 'posva/vim-vue'
"------------------- C# -----------------------------------
Plug 'OmniSharp/omnisharp-vim'
call plug#end()
