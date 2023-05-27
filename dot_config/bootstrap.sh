#ZSH Setup
brew install zsh-autosuggestions zsh-syntax-highlighting zsh zsh-autocomplete
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting 
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting 
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#Brew Packages
brew install fzf
brew install ripgrep
brew install lf
brew install neovim
brew install go
brew install htop
brew install chatblade
brew install chezmoi
brew install neofetch
brew install gcc
brew install docker
#Mac Only
brew install --cask bitwarden
brew install --cask kitty
brew install --cask google-chrome
brew install --cask hammerspoon
brew install --cask vlc
brew install --cask jetbrains-toolbox
brew install --cask amethyst
brew install --cask the-unarchiver
#Maybe
#brew install rtorrent
#
