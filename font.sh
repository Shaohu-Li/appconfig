echo "Installing fonts..."
# Hack Nerd Font
mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts 
# i like this one
curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/Cousine/Regular/CousineNerdFontMono-Regular.ttf
# standard
# curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
fc-cache -fv ~/.local/share/fonts && cd -
echo "Fonts installed."

# download all fonts
# cd /tmp
# git clone https://github.com/ryanoasis/nerd-fonts.git --depth 1
# cd nerd-fonts
# chmod +x install.sh
# ./install.sh