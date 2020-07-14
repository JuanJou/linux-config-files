let mapleader = ","
autocmd BufWritePre *.ts,*.js,*.html :call CocAction('runCommand','prettier.formatFile')
autocmd BufWritePre st *.cs :OmniSharpCodeFormat
nnoremap <c-j> 10j
nnoremap <c-k> 10k
nmap ; :

nnoremap <c-i> <c-i>

nnoremap j gj
nnoremap k  gk
nnoremap <silent> <c-a> :wq<CR>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nmap <silent> <c-s> :w<CR>
imap <silent> <c-s> <ESC>:w<CR>
nmap <leader>x :q<CR>
command!  Status :Gtabedit :
nmap <leader>u :UndotreeToggle<CR><C-W><C-W>
nmap <c-f> /
"-------------------- Toggle Insert/Normal Mode ----------------------------
nnoremap ff i
inoremap ff <ESC>

"---------------------- Navigate between tabs ------------------------------
nnoremap <c-l> <c-PAGEDOWN>
nnoremap <c-h> <c-PAGEUP>

"---------------------- Insert empty line Below ----------------------------
nnoremap <leader>o o<ESC>
inoremap <leader>o <ESC>o

"---------------------- ALL FILES Mappings----------------------------------
nnoremap <leader>zf $zf%

"------------------------- HTML Mappings -----------------------------------

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

"------------------------- React Native -----------------------------------
autocmd FileType javascript inoremap <leader>v <View></View><ESC>FVT>i
autocmd FileType javascript inoremap <leader>t <Text></Text><ESC>FTT>i

"------------------------- Commands Mappings -------------------------------
nnoremap <c-e> :NERDTreeToggle<CR>
nnoremap <leader>ez  :vsp ~/.zshrc<CR>
nnoremap <leader>rf  :so init.vim<CR>
nnoremap <leader>h :nohlsearch<CR>
"------------------------- C# / .NET -------------------------------
autocmd FileType cs nnoremap <leader>gt :OmniSharpGotoDefinition<CR>
autocmd FileType cs nnoremap <leader>p :OmniSharpCodeFormat<CR>

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

"------------------------- Git -------------------------------
nnoremap <leader>t :diffget //2<CR>
nnoremap <leader>s :diffget //3<CR>
nnoremap <leader>w :Gwrite<CR>
