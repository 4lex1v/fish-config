
set -l fish_path "$HOME/.config/fish"

## Load some fancy stuff
. "$fish_path/functions/git.fish"
. "$fish_path/functions/aliases.fish"
. "$fish_path/prompt.fish"
. "$fish_path/env.fish"

## Configure theFuck
eval (thefuck --alias | tr '\n' ';')

## Configure autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
