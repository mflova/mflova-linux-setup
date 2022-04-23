# Programs and utilities
alias cleanpyc="find . -name '*.pyc' -exec rm -f {} \;"
alias xclip="xclip -selection c"
alias s='subl'
alias v='nvim'
alias vim='nvim'
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
alias openrepo='gh browse'
alias cleanswap='rm -rf ~/.local/share/nvim/swap/*'
alias gitci='cz commit'
alias turnoff='shutdown now'
alias xc='xclip'
alias splitscreen='xrandr --output DP-1 --auto --right-of eDP-1'
alias newcleanpython='virtualenv $HOME/pythonenvs/clean'
alias cleanpython='source $HOME/pythonenvs/clean/bin/activate'

function scd() {
    cd "$(dirname $1)"
}

alias roslist='rostopic list'
rosfind() {
    rostopic list | grep "$1"
}


# Quick edit of files
alias edlinter='nvim ~/mflova-linux-setup/mflova-vim-config/cfg/linters.vim'
alias edlsp='nvim ~/mflova-linux-setup/mflova-vim-config/cfg/lsp.vim'
alias edtest='nvim ~/test/test.py'
alias edcoptions='nvim ~/mflova-linux-setup/mflova-chrome-setup/chromium-vim/background_scripts/options.js'
alias edcreadme='nvim ~/mflova-linux-setup/mflova-chrome-setup/README.md'
alias edcconfig='nvim ~/mflova-linux-setup/mflova-chrome-setup/chromium-vim/cvimrc'
alias ediconfig='nvim ~/.config/i3/config'
alias edireadme='nvim ~/mflova-linux-setup/mflova-i3-setup/README.md'
alias edviminit='nvim ~/mflova-linux-setup/mflova-vim-config/cfg/init.vim'
alias edvreadme='nvim ~/mflova-linux-setup/mflova-vim-config/README.md'
alias edvtodo='nvim ~/mflova-linux-setup/mflova-vim-config/todo.txt'
alias edbashrc='nvim ~/.bashrc'
alias edbashprofiles='nvim ~/.bash_profile'
alias edaliases='nvim ~/.bash_aliases'
alias edtodo='nvim ~/vimwiki/Flya\ Tasks.wiki'
alias ednotes='nvim ~/vimwiki/Notes.wiki'

# Git
function gitstapply() {
    git stash apply stash@{$1}
}

function pytestcov() {
    pytest --cov-report=term-missing --cov=$1 $1
}

function pytestcovbranch() {
    pytest --cov-report=term-missing --cov-branch --cov=$1 $1
}
