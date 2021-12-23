# Programs and utilities
alias xclip="xclip -selection c"
alias s='subl'
alias v='vim'
alias t='tree'
alias n='nano'
alias hgrep='history | grep'
alias fd='fdfind'
alias findfile='find . -name'
alias replacestring='find . -type f -exec sed -i 's/$1/$2/g' {} +'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias sds='source devel/setup.bash'
alias opendir='xdg-open .'
alias gitci='cz commit'
alias turnoff='shutdown now'
alias xc='xclip'

function scd() {
    cd "$(dirname $1)"
}

rosfind() {
    rostopic list | grep "$1"
}

# Quick edit of files
alias edtest='vim ~/test/test.py'
alias edcoptions='vim ~/mflova-linux-setup/mflova-chrome-setup/chromium-vim/background_scripts/options.js'
alias edcreadme='vim ~/mflova-linux-setup/mflova-chrome-setup/README.md'
alias edcconfig='vim ~/mflova-linux-setup/mflova-chrome-setup/chromium-vim/cvimrc'
alias ediconfig='vim ~/.config/i3/config'
alias sediconfig='s ~/.config/i3/config'
alias edireadme='vim ~/mflova-linux-setup/mflova-i3-setup/README.md'
alias edvimrc='vim ~/mflova-linux-setup/mflova-vim-config/cfg/.vimrc'
alias edale='vim ~/mflova-linux-setup/mflova-vim-config/cfg/ale.vim'
alias edpythonsnippets='vim ~/mflova-linux-setup/mflova-vim-config/cfg/snippets/python.snippets'
alias edvreadme='vim ~/mflova-linux-setup/mflova-vim-config/README.md'
alias edvtodo='vim ~/mflova-linux-setup/mflova-vim-config/todo.txt'
alias sedbashrc='s ~/.bashrc'
alias edbashrc='vim ~/.bashrc'
alias edbashprofiles='vim ~/.bash_profile'
alias sedaliases='s ~/.bash_aliases'
alias edaliases='vim ~/.bash_aliases'
alias edtodo='vim ~/TODO.md'
alias ednotes='vim ~/NOTES.md'
