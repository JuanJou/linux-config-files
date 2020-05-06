
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

au BufReadPost,BufNewFile *.cs OmniSharpHighlightTypes

source ~/.config/nvim/coc.vim 
