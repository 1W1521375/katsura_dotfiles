" neocomplete
""""""""""""""""""""""""""""""
let g:acp_enableAtStartup = 0                           " AutoComplPopを無効にする (競合対策)
let g:neocomplete#enable_at_startup = 1                 " 起動時に補完を有効にする
let g:neocomplete#auto_completion_start_length = 2      " 補完を開始する文字数
let g:neocomplete#enable_auto_select = 0                " 補完候補の先頭を自動で選択しない
let g:neocomplete#enable_camel_case_completion = 0      " camel case補完機能を無効にする
let g:neocomplete#enable_smart_case = 1                 " 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplete#sources#syntax#min_keyword_length = 3 " 3文字以上の単語に対して補完を有効にする
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'   " バッファ名の設定
let g:neocomplete#max_list = 10                         " ポップアップメニューで表示される候補の最大数

" Tabキーで補完候補を移動
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"
