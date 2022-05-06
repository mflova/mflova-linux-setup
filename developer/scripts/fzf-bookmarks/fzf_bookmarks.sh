#!/usr/bin/env bash

BASEDIR=$(dirname "$0")
SCRIPT=$BASEDIR/"parser.rb"
PATH_TO_BOOKMARKS=$BASEDIR/path_to_bookmarks

xopen() {
    for var in "$@"; do
        xdg-open "$var" > /dev/null 2>&1 &
    done
}

export -f xopen
BOOKMARKS_PATH=$(cat $PATH_TO_BOOKMARKS)
/usr/bin/ruby -x $SCRIPT  "$BOOKMARKS_PATH" |
  fzf-tmux -u 30% --ansi --multi --no-hscroll --tiebreak=begin |
  awk 'BEGIN { FS = "\t" } { print $2 }'                       |
  xargs bash -c 'xopen "$@"' _ {}

exit $?
