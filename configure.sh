#!/bin/bash

# Configuration script for a new Arch Linux installation
# Run this script as a regular user after the base system is installed.

#init keyring
echo "initializating keyring"
sudo pacman-key --init --noconfirm
sudo pacman-key --populate --noconfirm
sudo pacman -Sy archlinux-keyring --noconfirm
sudo pacman -Su --noconfirm

# Define the file path
PACMAN_CONF="/etc/pacman.conf"

# Check if the line already exists
if ! grep -q "ParallelDownloads" "$PACMAN_CONF"; then
	# Add ParallelDownloads = 5 under the [options] section
	sudo sed -i '/^# Misc/a ParallelDownloads = 5' "$PACMAN_CONF"
	echo "Added 'ParallelDownloads = 5' to $PACMAN_CONF"
else
	echo "ParallelDownloads setting already exists in $PACMAN_CONF"
fi

# --- 1. System Update ---
echo "Updating the system..."
sudo pacman -Syyuu --noconfirm
echo "System updated."

# --- 2. Install Your Favorite Packages ---
echo "Installing core packages..."
sudo pacman -S --noconfirm base-devel curl git chezmoi neovim fish eza ripgrep bat fzf git-delta

#installing yay 
echo "installing yay"
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

# --- 3. Configure Shell (Fish) ---
echo "Setting fish as the default shell..."
chsh -s $(which fish)

# --- 4. Dotfile Management (chezmoi) ---
echo "Setting up dotfiles..."
chezmoi init --apply aikenpil

# --- 5. Configuring github ssh access ---
echo "Now you have to configure github ssh acess following this manual 
      https://docs.github.com/en/authentication/connecting-to-github-with-ssh"
