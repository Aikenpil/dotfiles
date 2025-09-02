#!/bin/bash

# Configuration script for a new Arch Linux installation
# Run this script as a regular user after the base system is installed.

#Immediate exit on fail
set -e

#init keyring
echo "==== Initializating keyring ===="
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman -Sy archlinux-keyring --noconfirm
sudo pacman -Su --noconfirm

# Define the file path
PACMAN_CONF="/etc/pacman.conf"

# Add ParallelDownloads = 5 under the [options] section
if ! grep -q "ParallelDownloads" "$PACMAN_CONF"; then
	sudo sed -i '/^# Misc/a ParallelDownloads = 5' "$PACMAN_CONF"
	echo "Added 'ParallelDownloads = 5' to $PACMAN_CONF"
else
	echo "ParallelDownloads setting already exists in $PACMAN_CONF"
fi

# Get the number of CPU cores
NUM_CORES=$(nproc)

echo "Automating makepkg.conf changes to enable parallel compilation..."

# 1. Enable MAKEFLAGS for parallel compilation
sed -i "s/^#MAKEFLAGS=\"-j2\"/MAKEFLAGS=\"-j${NUM_CORES}\"/" /etc/makepkg.conf

# If the line was not found or has a different format, provide a fall-back message.
if ! grep -q "^MAKEFLAGS=\"-j${NUM_CORES}\"" /etc/makepkg.conf; then
	echo "Warning: The MAKEFLAGS line could not be automatically modified."
	echo "Please open /etc/makepkg.conf and manually add or change the line to:"
	echo "MAKEFLAGS=\"-j${NUM_CORES}\""
fi

# 2. Enable multi-threaded compression (xz)
sed -i "s/^COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -z - --threads=0)/" /etc/makepkg.conf

# If the line was not found, provide a fall-back message.
if ! grep -q "threads=0" /etc/makepkg.conf; then
	echo "Warning: The COMPRESSXZ line could not be automatically modified."
	echo "Please open /etc/makepkg.conf and manually add or change the line to:"
	echo "COMPRESSXZ=(xz -c -z - --threads=0)"
fi

# --- 1. System Update ---
echo "==== Updating the system ===="
sudo pacman -Syyuu --noconfirm
echo "==== System updated ===="

# --- 2. Install Your Favorite Packages ---
echo "==== Installing core packages ===="
sudo pacman -S --needed --noconfirm base-devel curl git chezmoi neovim fish fisher eza ripgrep bat fzf git-delta

#installing yay
echo "==== Installing yay ===="
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si --noconfirm
cd ~

# --- 3. Configure Shell (Fish) ---
echo "==== Setting fish as the default shell ===="
sudo chsh -s "$(which fish)" "$(whoami)"

# --- 4. Dotfile Management (chezmoi) ---
echo "==== Setting up dotfiles ===="
chezmoi init --apply aikenpil

# --- 5. Updating fish plugins ---
echo "==== updating fish plugins"
fish
fisher update
exit

# --- 5. Configuring github ssh access ---
echo "**** Now you have to configure github ssh acess following this manual ****
      https://docs.github.com/en/authentication/connecting-to-github-with-ssh"
