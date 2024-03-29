## Base configuration
```shell
git config --global user.name "XenoX"
git config --global user.email "changeme@gmail.com"

git config --global core.editor nvim

echo ".idea/" > ~/.gitignore
git config --global core.excludesFile "~/.gitignore"

ssh-keygen -t ed25519 -C "changeme@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub # copy past to GitHub
```

## Fonts

Download and unzip JetBrainsMono Nerd Font : https://www.nerdfonts.com/font-downloads
```shell
sudo mkdir -p /usr/share/fonts/jetbrains
sudo cp ~/Downloads/JetBrainsMono/* /usr/share/fonts/jetbrains
fc-cache -f -v
```

## Terminal

```shell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

- Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc`
- Set `plugins=(git wd docker zsh-autosuggestions zsh-syntax-highlighting)` in `~/.zshrc`
- Add this at the bottom of `~/.zshrc`
```shell
alias ls="exa"
alias ll="exa -l -h"
```

### Symfony & Composer
```shell
wget https://get.symfony.com/cli/installer -O - | bash
sudo ln -s ~/.symfony5/bin/symfony /usr/local/bin/symfony
 
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"
```
