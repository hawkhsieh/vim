#----      Caution !!!    ------------
# - The go version has to be 1.3
# - The GOROOT has to be /usr/local/go
# - The GOPATH has not to be empty

cp -a .vim ~
cp .vimrc ~

sudo apt-get -y install cmake
sudo apt-get -y install python-dev
sudo apt-get -y install mercurial
sudo apt-get -y install build-essential

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer
