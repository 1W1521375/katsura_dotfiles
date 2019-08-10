function! setup#dein_install()
    " MyAutoCmdの初期化
    augroup MyAutoCmd
        autocmd!
    augroup END

    " dein自体の自動インストール
    let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.vim/.cache') : $XDG_CACHE_HOME
    let s:cache_dein_dir = s:cache_home . '/dein'
    let s:cache_dein_repo_dir = s:cache_dein_dir . '/repos/github.com/Shougo/dein.vim'

    if !isdirectory(s:cache_dein_repo_dir)
        call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:cache_dein_repo_dir))
    endif

    let &runtimepath = s:cache_dein_repo_dir .",". &runtimepath

    if dein#load_state(s:cache_dein_dir)
        call dein#begin(s:cache_dein_dir)

        let s:toml        = g:DEIN_DIR . 'plugins.toml'
        let s:lazy_toml   = g:DEIN_DIR . 'plugins_lazy.toml'
        call dein#load_toml(s:toml,      {'lazy': 0})
        call dein#load_toml(s:lazy_toml, {'lazy': 1})

        call dein#end()
        call dein#save_state()
    endif

    " 不足プラグインの自動インストール
    if has('vim_starting') && dein#check_install()
        call dein#install()
    endif
endfunction


""" macの設定
function setup#osx_setting()
    colorscheme iceberg
endfunction


""" centOSの設定
function setup#unix_setting()
    colorscheme desert
    call feedkeys("\<Space>")
    call feedkeys("\s")
    call feedkeys("\l")
endfunction

