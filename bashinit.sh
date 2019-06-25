#!/bin/bash
#zsh install
echo "please input you bundle manager,exp : yum / apt-get/ jumbo"
read bm
cmd="sudo yum"
if [ "$bm" == "jumbo" ]  
then  

cmd="jumbo"
else 
cmd="sudo "$bm
fi
#install Oh-my-shell
$cmd install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" 
#autosuggest
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
cp .zshrc ~/.zshrc
#install tmux
$cmd install tmux -y
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf ~/.tmux.conf
#install vim  x
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc ~/.vimrc
