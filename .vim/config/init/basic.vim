" 検索
""""""""""""""""""""""""""""""
set ignorecase                  " 大文字小文字を区別しない
set smartcase                   " 小文字のみで検索したときに大文字小文字を無視する
set hlsearch                    " 検索結果をハイライト表示する
set incsearch                   " 最初の文字を入力した時点で検索を開始する
autocmd QuickFixCmdPost *grep* cwindow  " grep検索の実行後にQuickFix Listを表示


" ファイルシステム
""""""""""""""""""""""""""""""
set tags=~/.tags                " タグファイルの指定
set noswapfile                  " スワップファイルは使わない
set noundofile                  " undoファイルは作成しない
set browsedir=buffer            " バッファで開いているファイルのディレクトリでエクスクローラを開始
set hidden                      " 保存されていないファイルがあるときでも別のファイルを開ける
set nobackup                    " バックアップファイルを作成しない


" ステータスライン
""""""""""""""""""""""""""""""
set laststatus=1                " エディタウィンドウの末尾から行目にステータスラインを常に表示


" コマンドライン
""""""""""""""""""""""""""""""
set wildmenu                    " <Tab>キーによるファイル名補完を有効にする
set cmdheight=1                 " コマンドラインに使われる画面上の行数
set showcmd                     " 入力中のコマンドを表示する


" インデント
""""""""""""""""""""""""""""""
set autoindent                  " 改行時に前の行のインデントを継続する
set smartindent                 " 改行時に入力された行の末尾に合わせて次の行のインデントを増減
set shiftwidth=4                " インデントの幅 makefileの天敵なので注意
set expandtab                   " タブ入力を複数の空白入力に置き換える
set smarttab                    " 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする


" 文字コード
""""""""""""""""""""""""""""""
set encoding=utf-8              " ファイル読み込み時の文字コードの設定
set fileencodings=utf-8         " 保存時の文字コード
set fileformats=unix,dos,mac    " 改行コードの設定
scriptencoding utf-8            " Vim script内でマルチバイト文字を使う場合の設定


" 可視化
""""""""""""""""""""""""""""""
set cursorline                  " カレント行をハイライト
let loaded_matchparen = 1       " 対応する括弧のハイライトを表示しない
set listchars=tab:>\ ,extends:< " タブと行の続きを可視化する
set number                      " 行番号を表示
set list                        " 不可視文字を表示
set synmaxcol=200               " 任意の長さ以上の行をハイライトしない (クラッシュ防止目的)
syntax on                       " 構文毎に文字色を変化させる


" ファイル編集
""""""""""""""""""""""""""""""
set backspace=indent,eol,start  " BackSpaceで削除できるものの指定
set matchpairs& matchpairs+=<:> " 対応括弧に'<'と'>'のペアを追加
set formatoptions=q             " 勝手に改行するのを防ぐ


