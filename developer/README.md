# INFO
Automatically install the developer tools with:

```shell
ansible-playbook install_developer_tools.yaml --ask-become
```

This includes:

- Bash aliases
- Extra features on bashrc
- Terminator and its configuration
- Nerd Fonts
- Ranger
- FZF on bash
- FZF marks on bash
- FZF-based tool to open chrome bookmarks from terminal
- Git aliases

## Terminal

Main keys used:

- Alt-C: Fuzzy finder to directly go to a folder.
- Ctrl-T: Fuzzy finder to find files and dirs.
- Ctrl-R: Fuzzy finder for history commands.
- Ctrl-G: Fuzzy finder for marks (dirs added to "bookmarks" with `mark name`)


### Commands

- br: Fuzzy finder git branches
- b: Fuzzy finder chrome bookmarjs

## Ranger

Main keys used:

- yy: Copy
- dd: Cut
- dD: Delete
- Ctrl+g: FZF marks
- Ctrl+p: FZF files and folders from current dir
- Ctrl+w: Set image as wallpaper (not at startup)
- o: Sort by any criteria
- 1l: Uncompress zip
