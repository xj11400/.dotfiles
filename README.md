# .dotfiles

## Dependency

- [GNU Stow](https://www.gnu.org/software/stow/)

## Install

- pull submodules

    ```
    git submodule update --init --recursive
    ```

- run init.sh

    ```
    ./__x__/init.sh
    ```

- silent mode

    require : `__x__/custom.conf`. (copy and modify from `__x__/default.conf`)

    ```
    ./__x__/init.sh --silent
    ```

## Update

```
_DotUpdate
```
