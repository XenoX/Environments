#!/bin/bash

sudo systemctl enable --now bluetooth

######## GIT ########
git config --global user.name "XenoX"
git config --global user.email "$1"
git config --global core.editor nvim
echo ".idea/" > ~/.gitignore
git config --global core.excludesFile "~/.gitignore"

######## SSH KEY ########
ssh-keygen -t ed25519 -C "$1"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo "################################################################################"
echo "########################### COPY PAST THIS TO GITHUB ###########################"
echo "################################################################################"
cat ~/.ssh/id_ed25519.pub # copy past to GitHub
echo "################################################################################"

######## FONTS ########
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/JetBrainsMono.zip -P ~/Downloads
unzip ~/Downloads/JetBrainsMono.zip -d ~/Downloads/JetBrainsMono/
sudo mkdir -p /usr/share/fonts/jetbrains
sudo cp ~/Downloads/JetBrainsMono/* /usr/share/fonts/jetbrains
fc-cache -f -v
rm -rf ~/Downloads/JetBrainsMono
rm -rf ~/Downloads/JetBrainsMono.zip

######## ZSH ########
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

sed -i -e 's/robbyrussell/powerlevel10k\/powerlevel10k/g' ~/.zshrc
sed -i -e 's/plugins=(git)/plugins=(git wd docker zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc

echo "alias ls=\"exa\"" >> ~/.zshrc
echo "alias ll=\"exa -l -h\"" >> ~/.zshrc
