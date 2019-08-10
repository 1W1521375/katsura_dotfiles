source ~/.zsh/.zshrc.common

case ${OSTYPE} in
    darwin*)
        source ~/.zsh/.zshrc.darwin
        rehash
        ;;
    linux*)
        source ~/.zsh/.zshrc.linux
        rehash
        ;;
esac

