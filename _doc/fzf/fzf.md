
# install
also require install fzf

``` shell
cd ~/.local/share/fzf/install
./install --bin --no-update-rc --no-bash --no-zsh
```

- don't add script in .bashrc and .zshrc
- delete ~/.fzf.sh ~/.fzf.zsh


# config

- show hidden file
[here](https://github.com/srijanshetty/cli-goodies/blob/6af3a327dce92bede438f8d646d15d10d3074219/settings/101-fzf.zsh#L5)
``` shell
export FZF_DEFAULT_COMMAND='ag -l --path-to-ignore ~/.ignore --nocolor --hidden -g ""'
```

# usage
https://betterprogramming.pub/boost-your-command-line-productivity-with-fuzzy-finder-985aa162ba5d
