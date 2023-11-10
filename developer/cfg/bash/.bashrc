### Git
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1]/"
}
PS1="$PS1\$(parse_git_branch)"

### Add user-based binaries
export PATH="$HOME/.local/bin:$PATH"
