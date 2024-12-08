#!/bin/bash
# cleanup.sh - Restores environment changes made by linux.sh

# Remove the .nanorc file if it exists
if [[ -f ~/.nanorc ]]; then
  rm ~/.nanorc
  echo "Removed .nanorc file"
fi

# Remove the source line from .bashrc
if grep -q "source ~/.dotfiles/etc/bashrc_custom" ~/.bashrc; then
  sed -i '' "/source ~\/.dotfiles\/etc\/bashrc_custom/d" ~/.bashrc
  echo "Removed source line from .bashrc"
fi

# Remove the .TRASH directory if it exists
if [[ -d ~/.TRASH ]]; then
  rm -rf ~/.TRASH
  echo "Removed .TRASH directory"
fi

echo "Cleanup completed successfully!"
