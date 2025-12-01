#!/bin/bash

# get the directory of the current script
BASE_DIR=$(realpath "$(dirname "${BASH_SOURCE[0]}")/../")

# source helper file
source $BASE_DIR/scripts/helper.sh

log_message "Installation started for hypr section"
print_info "\nStarting hyprland setup..."
print_info "\nEverything is recommended to INSTALL"

run_command "pacman -S --noconfirm hyprland" "Install Hyprland (Must)" "yes"
run_command "mkdir -p /home/$SUDO_USER/.config/hypr/ && cp -r $BASE_DIR/configs/hypr/hyprland.conf /home/$SUDO_USER/.config/hypr/" "Copy hyprland config (Must)" "yes" "no" 

run_command "pacman -S --noconfirm xdg-desktop-portal-hyprland" "Install XDG desktop portal for Hyprland" "yes"

run_command "pacman -S --noconfirm polkit-kde-agent" "Install KDE Polkit agent for authentication dialogs" "yes"

run_command "pacman -S --noconfirm dunst" "Install Dunst notification daemon" "yes"
run_command "cp -r $BASE_DIR/configs/dunst /home/$SUDO_USER/.config/" "Copy dunst config" "yes" "no"

run_command "pacman -S --noconfirm qt5-wayland qt6-wayland" "Install QT support on wayland" "yes"

echo "------------------------------------------------------------------------"