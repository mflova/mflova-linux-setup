# INFO

This repository is created to set up my personal and entire developer environment, which includes:

- Aliases
- Bashrc
- I3 Windows manager with wallpapers
- NerdFonts
- Tools used in bash
- Neovim

## Installation

Tested on Ubuntu 20.04. From a fresh installed Ubntu:

```shell
sudo apt-get update
sudo apt-get install git ansible
cd $HOME
git clone --recursive git@github.com:mflova/mflova-linux-setup.git
cd mflova-linux-setup
git submodule update --init --recursive
ansible-playbook --ask-become full_installation.yaml
```
You can also disable/enable the components that you want to install in `full_installation.yaml`.
