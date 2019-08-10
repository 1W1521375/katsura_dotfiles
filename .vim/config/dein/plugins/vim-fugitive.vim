" vim-fugitiveの設定
""""""""""""""""""""""""""""""
" ステータス行に現在のgitブランチを表示する
if isdirectory(expand('~/.vim/dein/vim-fugitive'))
  set statusline+=%{fugitive#statusline()}
endif
