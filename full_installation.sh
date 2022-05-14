ansible-playbook --ask-become developer/install_developer_tools.yaml
source ~/.bashrc

if [ $? != 0 ]; then
    echo "Developer tools not correctly installed."
    exit 1
fi

ansible-playbook --ask-become mflova-i3-setup/playbooks/install_i3.yaml
source ~/.bashrc

if [ $? != 0 ]; then
    echo "i3wm not correctly isntalled."
    exit 1
fi

ansible-playbook --ask-become mflova-i3-setup/playbooks/install_polybar.yaml
source ~/.bashrc

if [ $? != 0 ]; then
    echo "i3-polybar not correctly isntalled."
    exit 1
fi

ansible-playbook --ask-become mflova-vim-config/scripts/bashrc_setup.yaml
source ~/.bashrc

if [ $? != 0 ]; then
    echo "Ubuntu setup for neovim not correctly installed."
    exit 1
fi

ansible-playbook --ask-become mflova-vim-config/scripts/nvim_installation.yaml
source ~/.bashrc

if [ $? != 0 ]; then
    echo "Full neovim installation not correctly done."
    exit 1
fi

echo "Full installation succeeded."
