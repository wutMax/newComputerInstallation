mkdir -p ~/.local/bin
mkdir -p ~/.local/Downloads
export PATH="$HOME/.local/bin:$PATH"

## VIM
cd ~/.local/Downloads
git clone https://github.com/vim/vim.git
cd vim/src
./configure --prefix=$HOME/.local/
make
make install

vim &
vimPID=$!

# TODO Need to sort .vimrc


## fzf
cd ~/.local/Downloads
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install


## Screen 
cd ~/.local/Downloads
wget http://ftp.gnu.org/gnu/screen/screen-4.9.0.tar.gz
mkdir screen
mv screen-4.9.0.tar.gz screen/
cd screen
tar -xf screen-4.9.0.tar.gz
cd screen-4.9.0/
./autogen.sh
./configure --prefix=$HOME/.local/

## ripgrep
cd ~/.local/Downloads
mkdir ripgrep
cd ripgrep
wget https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz
tar -xf ripgrep*
cd ripgrep*
cp rg $HOME/.local/bin/

## Ultimate plumber
cd ~/.local/Downloads
mkdir up
cd up
wget https://github.com/akavel/up/releases/latest/download/up
chmod +x up
mv up $HOME/.local/bin/

## mini-conda (Python + conda ...)
cd ~/.local/Downloads
mkdir miniConda
cd miniConda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
conda update conda
conda config --set changeps1 False

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

