#!/bin/bash

# Install Zsh if not already installed
if ! command -v zsh >/dev/null 2>&1; then
    echo "Installing Zsh..."
    sudo apt install zsh -y
else
    echo "Zsh already installed."
fi

# Install Oh My Zsh if not already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "Oh My Zsh already installed."
fi

ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

# Install zsh-syntax-highlighting if not already installed
if [ ! -d "${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting" ]; then
    echo "Installing zsh-syntax-highlighting..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting"
else
    echo "zsh-syntax-highlighting already installed."
fi

# Install zsh-autosuggestions if not already installed
if [ ! -d "${ZSH_CUSTOM}/plugins/zsh-autosuggestions" ]; then
    echo "Installing zsh-autosuggestions..."
    git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM}/plugins/zsh-autosuggestions"
else
    echo "zsh-autosuggestions already installed."
fi

# Install zsh-z if not already installed
if [ ! -d "${ZSH_CUSTOM}/plugins/zsh-z" ]; then
    echo "Installing zsh-z..."
    git clone https://github.com/agkozak/zsh-z "${ZSH_CUSTOM}/plugins/zsh-z"
else
    echo "zsh-z already installed."
fi

# Install Powerlevel10k theme if not already installed
if [ ! -d "${ZSH_CUSTOM}/themes/powerlevel10k" ]; then
    echo "Installing Powerlevel10k..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM}/themes/powerlevel10k"
else
    echo "Powerlevel10k already installed."
fi
