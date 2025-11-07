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

# 1. Enable MAKEFLAGS for parallel compilation
sudo sed -i "s/^#MAKEFLAGS=\".*\"/MAKEFLAGS=\"-j$(nproc)\"/" "/etc/makepkg.conf"

# 2. Enable multi-threaded compression (xz)
sudo sed -i "s/^#COMPRESSZST=(.*)/COMPRESSZST=(zstd -c -z -q -T0 -)/" "/etc/makepkg.conf"
sudo sed -i "s/^#COMPRESSXZ=(.*)/COMPRESSXZ=(xz -c -z -T0 -)/" "/etc/makepkg.conf"
sudo sed -i "s/^#COMPRESSGZ=(.*)/COMPRESSGZ=(pigz -c -f -n -T0 -)/" "/etc/makepkg.conf"

# --- 1. System Update ---
echo "==== Updating the system ===="
sudo pacman -Syyuu --noconfirm
echo "==== System updated ===="

# --- 2. Install Your Favorite Packages ---
echo "==== Installing core packages ===="
sudo pacman -S --needed --noconfirm base-devel curl git chezmoi cmake clang rustup npm neovim eza ripgrep fd bat fzf reflector mise zsh 

#installing yay
echo "==== Installing yay ===="
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si --noconfirm
cd ~

#installing aur packages
echo "==== Installing AUR packages ===="
yay -S --needed --noconfirm unzip zip zsh-antidote ttf-hack-nerd 

# --- 3. Configure Shell (zsh) ---
echo "==== Setting zsh as the default shell ===="
sudo chsh -s "$(which zsh)" "$(whoami)"

# --- 4. Dotfile Management (chezmoi) ---
echo "==== Setting up dotfiles ===="
chezmoi init --apply aikenpil

# --- 5. Updating shell plugins ---
echo "==== updating shell plugins"
antidote update

# --- 5. Configuring github ssh access ---
echo "**** Now you have to configure github ssh acess following this manual ****
      https://docs.github.com/en/authentication/connecting-to-github-with-ssh"
