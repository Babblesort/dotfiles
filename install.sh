#!/usr/bin/env bash
#
# install.sh — symlink tracked dotfiles into $HOME.
#
# Safe to re-run: existing symlinks are replaced; a real (non-symlink) file
# already in place is backed up to <file>.backup before being linked.
#
# Usage:  git clone <repo> ~/projects/dotfiles && ~/projects/dotfiles/install.sh

set -euo pipefail

# Resolve the directory this script lives in, so it works from anywhere.
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

link() {
  local src="$DOTFILES/$1" dest="$HOME/$2"
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "  backing up existing $dest -> $dest.backup"
    mv "$dest" "$dest.backup"
  fi
  ln -sf "$src" "$dest"
  echo "  linked $dest -> $src"
}

echo "Installing dotfiles from $DOTFILES"

# repo file            $HOME target
link zshrc             .zshrc
link vimrc             .vimrc
link p10k.zsh          .p10k.zsh
link gitconfig         .gitconfig

# Install Homebrew packages the configs depend on (see Brewfile).
if command -v brew >/dev/null 2>&1; then
  echo "Installing Homebrew packages from Brewfile"
  brew bundle --file="$DOTFILES/Brewfile"
else
  echo "  skipping Brewfile: brew not found on PATH (install Homebrew first)"
fi

echo "Done."
