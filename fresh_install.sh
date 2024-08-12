/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install unzip
wget -P https://github.com/lwouis/alt-tab-macos/releases/download/v6.72.0/AltTab-6.72.0.zip
unzip "AltTab-6.72.0.zip"

# Terminal installation
brew install --cask wezterm
ln -s ~/srv/dotfiles/wezterm/.wezterm.lua ~/.wezterm.lua

# ZSH
brew install zsh
sudo apt-get install zsh

# Power Level 10K
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
ln -s ./p10k/.p10k.zsh ~/.p10k.zsh
echo '[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh' >>~/.zshrc

# TMUX
brew install tmux
# Plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ./tmux/.tmux.conf ~/.tmux.conf

# Neovim
ln -s ./nvim ~/.config/nvim/
brew install neovim
tmux source ~/.tmux.conf

# Languages
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl -fsSL https://fnm.vercel.app/install | bash

# Zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
echo 'eval "$(zoxide init zsh)"' >>~/.zshrc

