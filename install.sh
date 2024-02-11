#!/bin/sh

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install font
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono

# install terminal components
brew tap homebrew/cask-versions
brew install --cask wezterm-nightly
brew upgrade --cask wezterm-nightly --no-quarantine --greedy-latest

brew install atuin
brew install zsh-autosuggestions

# install useful command replacements
brew install eza
brew install fd
brew install ripgrep

# install rust and its component
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup component add llvm-tools

# install rust-based command line tools from cargo install
source "$HOME/.cargo/env"
cargo install typos-cli

# install useful tools, which may be dependent certain environment
sh tools.sh
