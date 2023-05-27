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
brew install rust
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

# Configure git
git config --global user.name "Kierian"
git config --global user.email "kierianheffron25@gmail.com"

# Configure ssh
ssh-keygen -t rsa -b 4096 -C "kierianheffron25@gmail.com"

# Ensure ~/.config/chezmoi exists
if [[ ! -d ~/.config/chezmoi ]]; then
    mkdir -p ~/.config/chezmoi
fi

# Create chezmoi.toml
cat << EOF > ~/.config/chezmoi/chezmoi.toml
[git]
autoCommit = true
autoPush = true
EOF

#Cargo Packages
cargo install thokr

#Clone Dotfiles
chezmoi init --apply --verbose https://github.com/KierianH/MacDotfiles.git
