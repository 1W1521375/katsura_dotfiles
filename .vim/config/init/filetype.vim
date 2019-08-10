" ファイルタイプ毎の設定
""""""""""""""""""""""""""""""
filetype plugin on

au BufNewFile *.py 0r ~/.vim/template/python.txt
au BufNewFile *.cpp 0r ~/.vim/template/c++.txt
au BufNewFile *.sh 0r ~/.vim/template/sh.txt

