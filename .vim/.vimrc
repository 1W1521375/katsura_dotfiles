let g:ROOT_DIR = expand('~/.vim/')
let g:DEIN_DIR  = g:ROOT_DIR . 'config/dein/'


call setup#dein_install()

if has('mac')
    call setup#osx_setting()
else
    call setup#unix_setting()
endif


runtime! config/init/*.vim
runtime! config/dein/plugins/*.vim

