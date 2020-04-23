"------------------------- PLUG-INS-----------------------------

call plug#begin('~/.nvim/bundle')
"------------------- File Handling ----------------------------
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
"------------------- General Pourpose -------------------------
Plug 'tpope/vim-surround'
Plug 'crusoexia/vim-monokai'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'
Plug 'tomtom/tcomment_vim'
"------------------- GIT --------------------------------------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
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

filetype plugin indent on
syntax on
set tabstop=2 " number of tabs to show when vim finds a tab in a file
set softtabstop=2 " number of spaces when tab is pressed
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
let javaScript_fold=1
set foldlevelstart=99
colorscheme monokai


"---------------------------------------------------------------------------
"------------------------- MAPPINGS ----------------------------------------
let mapleader = ","
" THIS IS A HOT FIX, A MORE ELEGANT APPROACH WILL BE BETTER
nnoremap  <leader>p :silent exec "!prettier --write **/%"<CR>:redr!<CR>
nnoremap <c-j> 10j
nnoremap <c-k> 10k

nnoremap W w
nnoremap w W

nnoremap j gj
nnoremap k  gk
nnoremap <silent> <c-a> :wq<CR>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nmap <silent> <c-s> :w<CR>
imap <silent> <c-s> <ESC>:w<CR>
nmap <leader>x :q
command!  Test :NERDTreeToggle
command!  Status :Gtabedit :
"-------------------- Toggle Insert/Normal Mode ----------------------------
nnoremap ff i
inoremap ff <ESC>

"---------------------- Navigate between tabs ------------------------------
nnoremap <c-l> <c-PAGEDOWN>
nnoremap <c-h> <c-PAGEUP>

"---------------------- Insert empty line Below ----------------------------
nnoremap <leader>o o<ESC>
inoremap <leader>o <ESC>o
inoremap ; ;<CR>

"---------------------- ALL FILES Mappings----------------------------------
nnoremap <leader>zf $zf%

"------------------------- HTML Mappings -----------------------------------

autocmd FileType html inoremap >  ><ESC>hyi>f>a<CR><CR></<ESC>pa><ESC>ki
autocmd FileType html nnoremap <leader>c f>i<space>class=""<ESC> h

"------------------------- JS Mappings ------------------------------------
"autocmd FileType javascript inoremap <leader>f func()<Space>{}<ESC>Tfciw 
autocmd FileType javascript inoremap <leader>c const = ;<ESC>Tta
autocmd FileType javascript inoremap <leader>l let = ;<ESC>Tta
autocmd FileType javascript inoremap <leader>if if () {<CR><CR>}<ESC>?(<CR>a
autocmd FileType javascript inoremap <leader>ie if () {<CR><CR>}else {<CR><CR>}<ESC>?(<CR>a
autocmd FileType javascript inoremap <leader>f for(i=0;i<;i++) {<CR><CR>}<ESC>?<<CR>a 
autocmd FileType javascript inoremap <leader>im <ESC>yiw gg O import {  <ESC>P i } from '';<ESC>hi
autocmd FileType typescript inoremap <leader>im <ESC>yiw gg o import {  <ESC>P i } from '';<ESC>hi
autocmd FileType javascript inoremap { {}<ESC>T{i<CR><CR><ESC>ki 
autocmd FileType scss inoremap { {}<ESC>T{i<CR><CR><ESC>ki 
autocmd FileType javascript nnoremap <leader>gt :YcmCompleter GoTo<CR>
autocmd FileType typescript nnoremap <leader>gt :YcmCompleter GoTo<CR>

"------------------------- React Native -----------------------------------
autocmd FileType javascript inoremap <leader>v <View></View><ESC>FVT>i
autocmd FileType javascript inoremap <leader>t <Text></Text><ESC>FTT>i

"------------------------- Commands Mappings -------------------------------
nnoremap <c-e> :NERDTreeToggle<CR>
nnoremap <leader>ez  :vsp ~/.zshrc<CR>
nnoremap <leader>rf  :so init.vim<CR>
nnoremap <leader>h :nohlsearch<CR>

"------------------------------------------------------------------------
"------------------- PLUGINS CONFIGURATIONS -----------------------------

"-------------------------- CTRLP ---------------------------------------
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|openCVLibrary349\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
let g:ctrlp_by_filename = 0
"let g:ctrlp_user_command = 'rg %s --files --glob ""'
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

"------------------------ JS Plugin --------------------------------------
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_plugin_ngdoc = 1

"----------------------- NERDTree ----------------------------------------
let NERDTreeCustomOpenArgs = {'file':{'where':'t', 'reuse':'all'}}
let NERDTreeMinimalUI = 1

"---------------------- YouCompleteMe ------------------------------------
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_autoclose_preview_window_after_completion = 1

set laststatus=2
