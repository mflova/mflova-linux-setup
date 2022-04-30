ansible-playbook --ask-become developer/install_developer_tools.yaml
source ~/.bashrc

if [ $? != 0 ]; then
    echo "Developer tools not correctly installed."
    exit 1
fi

ansible-playbook --ask-become mflova-i3-setup/install_i3.yaml
source ~/.bashrc

if [ $? != 0 ]; then
    echo "i3wm not correctly isntalled."
    exit 1
fi

ansible-playbook --ask-become mflova-vim-config/scripts/ubuntu-setup.yaml
source ~/.bashrc

if [ $? != 0 ]; then
    echo "Ubuntu setup for neovim not correctly installed."
    exit 1
fi

ansible-playbook --ask-become mflova-vim-config/scripts/full-vim-installation.yaml
source ~/.bashrc

if [ $? != 0 ]; then
    echo "Full neovim installation not correctly done."
    exit 1
fi

echo "Full installation succeeded."
