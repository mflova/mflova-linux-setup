# Mflova setup

## General info

This repository is created to set up my personal and entire developer environment, which includes:

- Aliases
- Bashrc
- I3 Windows manager with wallpapers
- NerdFonts
- Terminal-based tools (ranger, fzf marks, fzf...)
- Neovim with fully integrate features (lsp, linters, testing mode, debugging mode,
  full git integration, markdown previwer...)

## Setup look

Main layout:

![Main layout](img/main_layout.png)

Example of Neovim debugger with lsp and linting:

![Debugger](img/debugger.png)

## Installation

Tested on Ubuntu 20.04. From a fresh installed Ubntu, follow these steps and then some
of the instructiosn that might appear:

```shell
sudo apt-get update
sudo apt-get install git ansible
cd $HOME
git clone --recursive git@github.com:mflova/mflova-linux-setup.git
cd mflova-linux-setup
ansible-playbook --ask-become playbooks/1_install_developer_and_i3.yaml
ansible-playbook --ask-become playbooks/2_install_pre_nvim.yaml
ansible-playbook --ask-become playbooks/3_install_nvim.yaml
```
