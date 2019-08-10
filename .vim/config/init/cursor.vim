" カーソル
""""""""""""""""""""""""""""""
set whichwrap=b,s,h,l,<,>,[,]           " カーソルを行頭、行末で止まらないようにする

" 最後のカーソル位置を復元
if has("autocmd")
    autocmd BufReadPost *
    \   if line("'\"") > 0 && line ("'\"") <= line("$") |
    \       exe "normal! g'\"" |
    \   endif
endif

"挿入モード時のカーソルを縦棒にする
if has('vim_starting')
    let &t_SI .= "\e[6 q"               " 挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_EI .= "\e[2 q"               " ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_te .= "\e[6 q"               " Vim終了時に非点滅の縦棒タイプのカーソル
endif


