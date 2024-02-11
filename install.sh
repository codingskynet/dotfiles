#!/bin/sh

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install font
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono

# install terminal conponents
brew tap homebrew/cask-versions
brew install --cask wezterm-nightly
brew upgrade --cask wezterm-nightly --no-quarantine --greedy-latest

brew install atuin
brew install zsh-autosuggestions

# install useful command replacements
brew install exa
brew install fd
brew install ripgrep
