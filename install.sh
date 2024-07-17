#!/bin/bash

printf "Enter your AUR package manager (yay, paru): "
read aur
echo $aur

echo "Installing packages"
sudo pacman -S hyprland kitty gtk3 nvim zsh sddm rofi-wayland waybar wpaperd nerd-fonts otf-font-awesome unzip ripgrep fzf
$aur -S neovide-git superfile-bin sddm-theme-sugar-candy-git layan-gtk-theme-git bibata-cursor-theme-bin

echo "Changing shell to zsh"
chsh -s /usr/bin/zsh

for d in */; do
    if [[ $d = "sddm-sugar-candy-theme/" ]] ; then
        sudo cp sddm-sugar-candy-theme/theme.conf /usr/share/sddm/themes/Sugar-Candy/theme.conf
        sudo cp sddm-sugar-candy-theme/Backgrounds/background.jpg /usr/share/sddm/themes/Sugar-Candy/Backgrounds/background.jpg
        continue
    fi
    stow $d
done

