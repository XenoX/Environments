## YAY
cd /tmp && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd

## GIT CONFIG
git config --global user.name "XenoX"
git config --global user.email "changeme@gmail.com"

git config --global core.editor vim

echo ".idea/" > ~/.gitignore
git config --global core.excludesFile "~/.gitignore"

## TERMINAL
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

## MISC
sudo systemctl enable --now bluetooth

cd /usr/share && sudo git clone https://github.com/danielmiessler/SecLists.git