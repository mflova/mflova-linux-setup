# ZSH
alias ll='ls -l -a --color=auto'
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
alias r='ranger'
alias h='htop'
alias cat='bat'

# FZF branches
alias br='git checkout $(git branch | fzf)'
# FZF bookmarks
alias b='bash $HOME/mflova-linux-setup/developer/scripts/fzf-bookmarks/fzf_bookmarks.sh'

alias dotest="pytest autocalib/tests/test_autocalib_integration.py"


function scd() {
    cd "$(dirname $1)"
}

alias roslist='rostopic list'
rosfind() {
    rostopic list | grep "$1"
}

function flake8mflova(){
    flake8 --docstring-style=sphinx --max-line-length=90 --ignore="PT001, DAR101, C812, PT006, S101, E800, PD011, W503, PIE789, FS001, PT007, FS003, I900, TC001, TC002" $1
}

# Dirs
alias cdmfvim='cd /home/manuflya/mflova-linux-setup/mflova-vim-config'
alias cdrovio='cd /home/manuflya/flyability/build_gaston/components/rovio'
alias cdbuild_gaston='cd /home/manuflya/flyability/build_gaston'
alias cdeliospy='cd /home/manuflya/flyability/eliospy'
alias cdval='cd /home/manuflya/flyability/gaston_validation_tests'
alias cdglob='cd /home/manuflya/flyability/build_gaston/components/global_configuration'
alias cdvim='cd ~/.vim'
alias cdsetup='cd /home/manuflya/mflova-linux-setup'

# Quick edit of files
alias edlinter='nvim ~/mflova-linux-setup/mflova-vim-config/cfg/linters.vim'
alias edlsp='nvim ~/mflova-linux-setup/mflova-vim-config/cfg/lsp.vim'
alias edtest='nvim ~/test/test.py'
alias edcoptions='nvim ~/mflova-linux-setup/mflova-chrome-setup/chromium-vim/background_scripts/options.js'
alias edcreadme='nvim ~/mflova-linux-setup/mflova-chrome-setup/README.md'
alias edcconfig='nvim ~/mflova-linux-setup/mflova-chrome-setup/chromium-vim/cvimrc'
alias ediconfig='nvim ~/.config/i3/config'
alias edtconfig='nvim ~/.config/terminator/config'
alias edireadme='nvim ~/mflova-linux-setup/mflova-i3-setup/README.md'
alias edviminit='nvim ~/mflova-linux-setup/mflova-vim-config/cfg/init.vim'
alias edvreadme='nvim ~/mflova-linux-setup/mflova-vim-config/README.md'
alias edvtodo='nvim ~/mflova-linux-setup/mflova-vim-config/todo.txt'
alias edbashrc='nvim ~/.bashrc'
alias edprofile='nvim ~/.profile'
alias edkitty='nvim ~/.config/kitty/kitty.conf'
alias edterminator='nvim ~/.config/terminator/config'
alias edbashprofiles='nvim ~/.bash_profile'
alias edaliases='nvim ~/.bash_aliases'
alias edtodo='nvim ~/vimwiki/Flya\ Tasks.wiki'
alias ednotes='nvim ~/vimwiki/Notes.wiki'
alias eddrones='nvim ~/notes/drones_status.csv'

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
