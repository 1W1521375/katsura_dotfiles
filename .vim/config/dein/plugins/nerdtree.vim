" NERDTreeの設定
""""""""""""""""""""""""""""""
" 横幅の設定
let NERDTreeWinSize=26
"引数なしでvimを開いたらNERDTreeを起動、引数ありならNERDTreeは起動せず、引数で渡されたファイルを開く。
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" NERDTreeを初めから起動
function s:MoveToFileAtStart()
  call feedkeys("\<Space>")
  call feedkeys("\s")
  call feedkeys("\l")
endfunction
autocmd VimEnter *  NERDTree | call s:MoveToFileAtStart()
" \ntでNERDTreeを起動
nnoremap \nt :NERDTree<CR>
" 隠しファイルを表示する
let NERDTreeShowHidden = 1
nnoremap <silent><C-e> :NERDTreeFocusToggle<CR>
" デフォルトでツリーを表示させる
let g:nerdtree_tabs_open_on_console_startup=1
" 他のバッファをすべて閉じた時にNERDTreeが開いていたらNERDTreeも一緒に閉じる。
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

