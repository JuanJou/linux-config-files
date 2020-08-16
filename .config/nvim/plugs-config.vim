"
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|openCVLibrary349\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
let g:ctrlp_by_filename = 0
" let g:ctrlp_user_command = 'rg %s --files --glob ""'
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }
"
"------------------------ JS Plugin --------------------------------------
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_plugin_ngdoc = 1

"----------------------- NERDTree ----------------------------------------
let NERDTreeCustomOpenArgs = {'file':{'where':'t', 'reuse':'all'}}
let NERDTreeMinimalUI = 1

" au BufReadPre,BufNewFile *.cs :OmniSharpHighlightTypes
let g:OmniSharp_highlight_types = 2


"----------------------- SNEAK ----------------------------------------
let g:sneak#label = 1


"----------------------- ANDROID ----------------------------------------
let g:android_sdk_path = "~/Android/Sdk"
"----------------------- SIGNIFY ----------------------------------------
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1
let g:signify_disable_by_default = 1

