#!/bin/bash
# linux.sh - Sets up a custom Linux environment

# Check if the operating system is Linux
if [[ "$(uname)" != "Linux" ]]; then
  echo "ERROR: This script only works on Linux!" >> linuxsetup.log
  exit 1
fi

# Create .TRASH directory if it doesn't exist
mkdir -p ~/.TRASH

# Back up the existing .nanorc if it exists
if [[ -f ~/.nanorc ]]; then
  mv ~/.nanorc ~/.bup_nanorc
  echo "Current .nanorc file was renamed to .bup_nanorc" >> linuxsetup.log
fi

# Copy the custom nanorc configuration
cp etc/nanorc ~/.nanorc

# Add custom bashrc source line if not already in .bashrc
if ! grep -q "source ~/.dotfiles/etc/bashrc_custom" ~/.bashrc; then
  echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
fi

# Log success
echo "Linux environment successfully set up!" >> linuxsetup.log
