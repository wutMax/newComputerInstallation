#! /bin/bash

mkdir -p ~/.local/bin
mkdir -p ~/.local/Downloads
export PATH="$HOME/.local/bin:$PATH"

## Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## wget
brew install wget

## git
brew install git

## iterm2
brew install --cask iterm2

## VIM
brew install vim

vim &
vimPID=$!

# TODO Need to sort .vimrc

##  htop
brew install htop

## fzf
cd ~/.local/Downloads
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install


## Screen 
brew install screen
## ripgrep
brew install ripgrep

## Ultimate plumber
brew install up

## rsync 
brew install rsync

## mini-conda (Python + conda ...)
mkdir -p ~/miniconda3
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh -o ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh

## conda env
conda create -c conda-forge -n scientificLinux spyder numpy scipy pandas matplotlib sympy cython 

## theFuck
pip install thefuck
echo $'eval "$(thefuck --alias f)"' >> .bashrc

## rsync-time-backup
cd ~/.local/Downloads
mkdir rsync-time-backup
cd rsync-time-backup
git clone https://github.com/laurent22/rsync-time-backup
cd rsync-time-backup
mv rsync_tmbackup.sh ~/.local/bin/


## Firefox plugins
firefox --new-tab --url https://addons.mozilla.org/en-US/firefox/addon/istilldontcareaboutcookies/
firefox --new-tab --url https://addons.mozilla.org/en-GB/firefox/addon/leechblock-ng/
firefox --new-tab --url https://addons.mozilla.org/en-GB/firefox/addon/ublock-origin/

