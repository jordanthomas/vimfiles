# Vimfiles

This project contains all the settings and plugins I use for Vim. It uses
[pathogen.vim](https://github.com/tpope/vim-pathogen) to manage plugins as
git submodules.

![Screenshot of Vim](https://github.com/jordanthomas/vimfiles/raw/master/screenshot.png)

## Plugins

1. [ag.vim](https://github.com/rking/ag.vim) - For searching via the_silver_searcher
2. [vim-airline](https://github.com/bling/vim-airline) - Fancy statusline
3. [vim-bufferline](https://github.com/bling/vim-bufferline) - Show buffers in statusline
4. [vim-coffee-script](https://github.com/kchmck/vim-coffee-script) - For Coffee syntax and other niceties
5. [vim-commentary](https://github.com/tpope/vim-commentary) - For commenting
6. [vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax) - For CSS3/SCSS syntax
7. [ctrlp.vim](https://github.com/kien/ctrlp.vim) - For finding files
8. [vim-fugitive](https://github.com/tpope/vim-fugitive) - For git
9. [html5.vim](https://github.com/othree/html5.vim) - For HTML5 syntax
10. [vim-jade](https://github.com/digitaltoad/vim-jade) - For Jade template syntax
11. [vim-javascript](https://github.com/pangloss/vim-javascript) - For Javascript syntax
12. [vim-markdown](https://github.com/tpope/vim-markdown) - For Markdown syntax
13. [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized) - The Solarized theme
14. [indentLine](https://github.com/Yggdroot/indentLine) - For indent guides

## Setup

**Before you get started: You probably want to fork this repo and work off your own copy of it.**

### Install a Patched Font

Before you get to cloning the repo, you’ll want to install a patched font so
the vim-airline plugin looks right. You can find some pre-patched fonts in the
[powerline-fonts](https://github.com/Lokaltog/powerline-fonts) repo. You can
read more about font patching in [Powerline’s docs](http://powerline.readthedocs.org/en/latest/fontpatching.html#font-patching)
if none of the pre-patched ones suit your fancy. I’m using Source Code Pro in
this repo so if you pick something else, be sure to update the vimrc file.

### Install the_silver_searcher

The [ag.vim](https://github.com/rking/ag.vim) plugin uses the_silver_searcher. You can install it via [Homebrew](http://brew.sh), there's a package called `the_silver_searcher`.

### Clone The Repo

  1. `git clone [your_vimfiles_repo] ~/.vim`
  2. `cd ~/.vim`
  3. `git submodule init`
  4. `git submodule update`
  5. `ln -s ~/.vim/vimrc ~/.vimrc`
  6. `ln -s ~/.vim/gvimrc ~/.gvimrc`
  7. Enjoy.

### Making tweaks

You can find the `vimrc` file at `~/.vim/vimrc`.
