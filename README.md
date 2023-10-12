# votd.fish
A bible verse of the day script for fish.

## Installing

Requirements: install `fish` (friendly interactive shell).

1) Download the above `votd.fish` file.
2) Copy it into a new file: `~/.local/bin/votd`.
3) Test that it's working by running `votd` in a terminal.

## API

The current API in use is `https://www.kingjamesbibleonline.org/`.  
It's not really an API but it works.  
If you would like a different api, change the `Votd_API` variable and the `sed` commands to match.
