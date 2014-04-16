# Vimfiles

This project contains all the settings and plugins I use for Vim. It uses
[pathogen.vim](https://github.com/tpope/vim-pathogen) to manage plugins as
git submodules.

## So you want to try this setup out?

Note: You probably want to fork this repo and work off your own copy of it.

### Install a Patched Font

Before you get to cloning the repo, you’ll want to install a patched font so
the vim-airline plugin looks right. You can find some pre-patched fonts in the
[powerline-fonts](https://github.com/Lokaltog/powerline-fonts) repo. You can
read more about font patching in [Powerline’s docs](http://powerline.readthedocs.org/en/latest/fontpatching.html#font-patching)
if none of the pre-patched ones suit your fancy. I’m using Source Code Pro in
this repo so if you pick something else, be sure to update the vimrc file.

### Clone The Repo

  1. `git clone [your_vimfiles_repo] ~/.vim`
  2. `cd ~/.vim`
  3. `git submodule init`
  4. `git submodule update`
  5. `ln -s ~/.vim/vimrc ~/.vimrc`
  6. Enjoy.

### Making tweaks

You can find the `vimrc` file at `~/.vim/vimrc`.
