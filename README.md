
# gitautopuller

This is a simple bash script extension to check if the current directory
is a `git` repository or not and ask the user to either `pull`, `fetch` or
just do nothing.

## Install

We use makefile to install the bash script.

Linux (Debian/Ubuntu):
```bash
sudo make install
```

There is one more thing after installation, you need to setup your shell
to check if the current directory is a git repository or not. For that,
add corresponding script for your shell

#### `bash`
Add the following into your `.bashrc` file.
```bash
PROMPT_COMMAND="fetch_or_pull"
```

#### `zsh`
Add the following into your `.zshrc` file.
```zsh
chpwd() {
    fetch_or_pull
}
```

#### `fish`
Unfortunately `fish` do not support this feature of runnning a command on each
directory changes. But we can take advantage of the `cd` command and alias it
with a new function just like below.
```fish
function cd
    # call the original `cd` command
    command cd $argv

    # running our script down here
    fetch_or_pull
    # you can also run any other scripts down here
end
```

## Uninstall

As simple as install
```bash
sudo make uninstall
```

