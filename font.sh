# Hack Nerd Font
# cd /tmp
# git clone https://github.com/ryanoasis/nerd-fonts.git --depth 1
# cd nerd-fonts
# chmod +x install.sh
# ./install.sh

# Hack Nerd Font
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
fc-cache -fv ~/.local/share/fonts