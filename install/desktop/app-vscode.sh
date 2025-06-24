# Add Microsoft GPG key and repository for VS Code (new .sources format)

sudo mkdir -p /etc/apt/keyrings
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | \
    gpg --dearmor | sudo tee /etc/apt/keyrings/packages.microsoft.gpg > /dev/null

cat <<EOF | sudo tee /etc/apt/sources.list.d/vscode.sources > /dev/null
Types: deb
URIs: https://packages.microsoft.com/repos/code
Suites: stable
Components: main
Architectures: amd64 arm64 armhf
Signed-By: /etc/apt/keyrings/packages.microsoft.gpg
EOF

sudo apt update -y
sudo apt install -y code

# Optional: VS Code settings copy
# mkdir -p ~/.config/Code/User
# cp ~/.local/share/omakub/configs/vscode.json ~/.config/Code/User/settings.json

# Optional: Install default theme
# code --install-extension enkia.tokyo-night
