sudo DEBIAN_FRONTEND=noninteractive apt install -y emacs # não solicitar configuração do postfix
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
