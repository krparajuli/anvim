#!/bin/zsh


# Install homebrew if not installed
brew -v || /bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Install node with nvm
nvm --version || curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | zsh
nvm install stable; nvm use stable

## install ripgrep
rg --version || cargo install ripgrep
grep "alias grep=rg" ~/.zshrc || echo "alias grep=rg" >> ~/.zshrc
## install lazygit
lazygit -v || brew install jesseduffield/lazygit/lazygit
## install goDiskUsage
gdu-go -v || brew install gdu
## install bottom
btm --version || cargo install bottom

# Download Meslo NerdFonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Meslo.zip


