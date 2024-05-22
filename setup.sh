#!/usr/bin/env bash
# !!! THIS IS THE macOS VERSION !!!

# get dotdir (this directory)
DOTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# symlinks
ln -sf $DOTDIR/zsh/zshrc $HOME/.zshrc
rm -rf $HOME/.config/nvim
ln -s $DOTDIR/nvim $HOME/.config/nvim
rm -rf $HOME/.config/skhd
ln -s $DOTDIR/skhd $HOME/.config/skhd
rm -rf $HOME/.config/sketchybar
ln -s $DOTDIR/sketchybar $HOME/.config/sketchybar
rm -rf $HOME/.config/yabai
ln -s $DOTDIR/yabai $HOME/.config/yabai
rm -rf $HOME/.config/wezterm
ln -s $DOTDIR/wezterm $HOME/.config/wezterm
rm -rf $HOME/.config/zellij
ln -s $DOTDIR/zellij $HOME/.config/zellij
# zed is a special case
rm -rf $HOME/.config/zed/keymap.json
rm -rf $HOME/.config/zed/settings.json
ln -s $DOTDIR/zed/keymap.json $HOME/.config/zed/keymap.json
ln -s $DOTDIR/zed/settings.json $HOME/.config/zed/settings.json

echo ""
echo "All done!"
echo ""
