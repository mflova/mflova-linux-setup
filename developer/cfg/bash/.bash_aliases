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

# Flya
alias updatedroneinterfaceconfig='cp /home/manuflya/flyability/autocalib/drone_interface_config.yaml /home/manuflya/flyability/autocalib/src/autocalib/autocalib/drone_interface/config/drone_interface_config.yaml'
alias sdsbuild='source /home/manuflya/flyability/gaston_obc/build/devel/setup.bash'
alias sdsautocalib='source /home/manuflya/flyability/autocalib/devel/setup.bash'
alias sdsboth='sdsautocalib && sdskalibr'
alias sdskalibr='source /home/manuflya/flyability/autocalib/src/kalibr/devel/setup.bash --extend'
alias pasteflake8='cp /home/manuflya/flyability/eliospy/.flake8 .'
alias pastegitignore='echo -e "\n*.swp\n*.swo\n*.swn\n__pycache__/\n*/tags\ntags\n*.desktop\n*.csv\n*.pdf\n*.bag.info\n*.csv\n*.orig" >> .gitignore'
alias pastemypy='cp /home/manuflya/flyability/eliospy/.mypy.ini .'
alias dockerrungaston='docker run --rm -it --entrypoint bash flyability.jfrog.io/docker-flyability/gaston-native-compile:noetic'
alias docgaston='google-chrome https://flyability-build-gaston.readthedocs-hosted.com/en/master/index.html#'
alias docflya='google-chrome https://readthedocs.com/organizations/flyability/'
alias visrovio='sdsbuild && gaston_usb && roslaunch /home/manuflya/flyability/build_gaston/share/launch/live.launch mode:=vio'


alias sshgandalf1='ssh nvidia@192.168.3.21'
alias sshgandalf2='ssh nvidia@192.168.3.22'
alias sshgandalf3='ssh nvidia@192.168.3.23'
alias sshgandalf4='ssh nvidia@192.168.3.24'
alias sshgandalf5='ssh nvidia@192.168.3.25'
alias sshgandalf6='ssh nvidia@192.168.3.26'
alias compile_gaston='cd ~/flyability/build_gaston/build && cmake ../ -DCMAKE_INSTALL_PREFIX=../install -DCMAKE_BUILD_TYPE=Release -DBUILD_WORKSPACE=true -DROVIO_NCAM=3'
alias compile_catkin_offline='bash ~/compile_catkin_offline.sh'
alias flashgandalf='scp gaston_*_arm64.deb nvidia@10.42.0.1:/tmp/ && ssh -t nvidia@10.42.0.1 sudo dpkg -i /tmp/gaston_*_arm64.deb'
alias scpbag='scp nvidia@10.42.0.1:/home/nvidia/bagfiles/*.bag .'
alias sshgandalf='ssh nvidia@10.42.0.1'
# WL
alias gandalf='export ROS_MASTER_URI=http://10.42.0.1:11311 && export ROS_IP=manuflya.local'
# LL: Host and target
alias gaston_wifi='export ROS_MASTER_URI=http://192.168.40.1:11311 && export ROS_IP=192.168.40.2 && echo "export ROS_IP=192.168.40.1 && gaston restart" | xclip' # export_ROS_IP=192.168.40.1 && gaston restart
alias gaston_usb='export ROS_MASTER_URI=http://elios3.local:11311' # export_ROS_IP=192.168.41.1 && gaston restart
alias gaston_herelink='export ROS_MASTER_URI=http://192.168.42.1:11311 && export ROS_IP=192.168.42.2 && echo "export ROS_IP=192.168.42.1 && gaston restart" | xclip' # export_ROS_IP=192.168.42.1 && gaston restart
alias openbuildgaston='cd ~manuel/flyability/catkin_ws/src/build_gaston/'
alias docker_init='sudo docker run -w /build/build-arm64 --rm -it \
    -v /opt/ccache-gaston-arm64-cross:/opt/ccache \
    -v $(pwd):/build flyability/gaston-cross-compile:opencv-merged \
    bash'

alias docker_gaston='cd /home/manuflya/flyability/build_gaston/ && docker run -w /build_gaston/ --rm -it \
                   -v $(pwd):/build_gaston \
                   -v ~/.conan_arm64:/gaston_obc_bsp/staging/.conan \
                   -v ~/.jfrog:/root/.jfrog \
                   -v /opt/ccache-gaston-arm64-cross:/opt/ccache \
                   -v $SSH_AUTH_SOCK:$SSH_AUTH_SOCK \
                   -e SSH_AUTH_SOCK \
                   --pull=always \
                   flyability.jfrog.io/docker-flyability/obc-bsp:latest \
                   bash'
alias cmake_gaston='cmake .. -DCMAKE_TOOLCHAIN_FILE=$(pwd)/../cmake/linux-gcc.cmake \
         -DCMAKE_BUILD_TYPE=Release \
         -DBUILD_WORKSPACE=true \
         -DROVIO_NCAM=3 \
         -DBUILD_VIZ=OFF \
         -DBUILD_PYTHON_BINDINGS=OFF \
         -DCMAKE_EXPORT_COMPILE_COMMANDS=1'
alias make_gaston='make -j`nproc --ignore=2`'

alias te='cd $HOME/test && nvim main.py'

# Bugbear dev
alias bugbearenv='source $HOME/pythonenvs/bugbear/bin/activate'
alias upgradepip='$HOME/pythonenvs/bugbear/bin/pip install --upgrade pip setuptools wheel'
alias cdbugbear='cd flake8-bugbear'
alias installdev='$HOME/pythonenvs/bugbear/bin/pip install -e .[dev]'
alias testbugbear='$HOME/pythonenvs/bugbear/bin/coverage run tests/test_bugbear.py'
