#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  if [[ -x /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  else
    eval "$(/usr/local/bin/brew shellenv)"
  fi
fi

brew bundle --file "$repo_dir/Brewfile"

backup_dir="$HOME/.local/state/dotfiles-backup/$(date +%Y%m%d-%H%M%S)"
mkdir -p "$backup_dir"
for file in .zshrc .zprofile .zshenv .p10k.zsh .zsh_plugins.txt; do
  [[ -e "$HOME/$file" ]] && cp -p "$HOME/$file" "$backup_dir/$file"
done

chezmoi --source "$repo_dir" apply --verbose
echo "Dotfiles aplicados. Backup anterior: $backup_dir"
echo "Abra um novo terminal ou execute: exec zsh"

