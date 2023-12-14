# vim-config

## Purpose

Facilitate the seamless transition to a new environment by configuring vim with simple commands.

## Usage

Verify the absence of `.vim` or `.vimrc` in your home directory.

If not found, execute the following command:

```sh
git clone --recursive https://github.com/junqi-lu/vim-config.git ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc
```

Adjust the `.vimrc` file to align with your specific preferences.

## Plugins

* [CtrlP](https://github.com/ctrlpvim/ctrlp.vim/tree/master)

### use submodule to manage plugins

```sh
git submodule add --name <plugin_name> <submodule_repository_url> <path_to_submodule_directory>
```

### update

```sh
git submodule update --remote
```
