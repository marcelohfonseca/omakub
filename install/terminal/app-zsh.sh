# install Zsh
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
sudo apt install zsh -y

# install Oh My Zsh
# https://github.com/ohmyzsh/ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# install package "zsh-syntax-highlighting"
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc)

# install package "zsh-autosuggestions"
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
# add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc)

# install package "zsh-z"
git clone https://github.com/agkozak/zsh-z ~/.oh-my-zsh/custom/plugins/zsh-z
# add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc)

# install theme powerlevel10k
# https://github.com/romkatv/powerlevel10k#oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc
