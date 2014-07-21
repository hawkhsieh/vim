cp -a .vim ~
cp .vimrc ~

sudo apt-get -y install cmake
sudo apt-get -y install python-dev

cd ~/.vim
./install.sh --clang-completer

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
