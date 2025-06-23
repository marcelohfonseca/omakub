# Clone dotfiles repository
git clone https://github.com/marcelohfonseca/dotfiles.git ~/.dotfiles

# Delete dotfiles
rm -rf "$HOME/.aliases"
rm -rf "$HOME/.gitconfig"
rm -rf "$HOME/.zshrc"
rm -rf "$HOME/.zprofile"
rm -rf "$HOME/.p10k.zsh"
rm -rf "$HOME/feed.OPML"

# Create symlinks for dotfiles
ln -s "$HOME/.dotfiles/aliases/.aliases" "$HOME/.aliases"
ln -s "$HOME/.dotfiles/dotfiles/git/.gitconfig" "$HOME/.gitconfig"
ln -s "$HOME/.dotfiles/dotfiles/zsh/.zshrc" "$HOME/.zshrc"
ln -s "$HOME/.dotfiles/dotfiles/zsh/.zprofile" "$HOME/.zprofile"
ln -s "$HOME/.dotfiles/dotfiles/zsh/.p10k.zsh" "$HOME/.p10k.zsh"
ln -s "$HOME/.dotfiles/dotfiles/feed.OPML" "$HOME/feed.OPML"

# Reload zsh
source "$HOME/.zshrc"
