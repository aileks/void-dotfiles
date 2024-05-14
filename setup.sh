#!/usr/bin/env bash

# nix stuff
sudo rm /etc/nixos/configuration.nix
sudo rm /etc/nixos/home.nix

sudo cp nixos/configuration.nix /etc/nixos/
sudo cp nixos/home.nix /etc/nixos/


## -------------------------------------------- ##
## TODO: Move most/all of this to home manager. ##
## -------------------------------------------- ##
# get dotdir (this directory)
DOTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# theme stuff
cp -r $DOTDIR/.local $HOME
cp -r $DOTDIR/themes/* $HOME/.config
cp $DOTDIR/.Xresources $HOME

# symlinks
ln -sf $DOTDIR/tmux/tmux.conf $HOME/.tmux.conf
ln -sf $DOTDIR/zsh/zshrc $HOME/.zshrc
rm -rf $HOME/.config/nvim
ln -s $DOTDIR/nvim $HOME/.config/nvim
rm -rf $HOME/.config/i3
ln -s $DOTDIR/i3 $HOME/.config/i3
rm -rf $HOME/.config/i3blocks
ln -s $DOTDIR/i3blocks $HOME/.config/i3blocks
rm -rf $HOME/.config/picom
ln -s $DOTDIR/picom $HOME/.config/picom
rm -rf $HOME/.config/wezterm
ln -s $DOTDIR/wezterm $HOME/.config/wezterm
rm -rf $HOME/.config/ghostty
ln -s $DOTDIR/ghostty $HOME/.config/ghostty
rm -rf $HOME/.config/dunst
ln -s $DOTDIR/dunst $HOME/.config/dunst
rm -rf $HOME/.gitconfig
ln -s $DOTDIR/git/gitconfig $HOME/.gitconfig
rm -rf $HOME/.gitignore_global
ln -s $DOTDIR/git/gitignore_global $HOME/.gitignore_global

echo ""
echo "ALL DONE!"
echo "NOW REBUILD!"
echo ""
