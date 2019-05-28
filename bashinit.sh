#!/bin/bash
#zsh install
echo "please input you bundle manager,exp : yum / apt-get/ jumbo"
read bm
#install Oh-my-shell
sudo $bm install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" 
cp .zshrc ~/.zshrc
#install tmux
sudo $bm install tmux -y
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux ~/.tmux
#install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc ~/.vimrc
