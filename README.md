# dotfiles

Personal shell and editor configuration, managed via symlinks.

The real files live here in the repo (without a leading dot); the corresponding
`~/.<name>` locations are symlinks pointing back into this repo. Editing either
path edits the same file, so the repo and live config can never silently drift.

## Tracked files

| Repo file  | Symlinked to    | What it is                                            |
|------------|-----------------|-------------------------------------------------------|
| `zshrc`    | `~/.zshrc`      | zsh config (oh-my-zsh, powerlevel10k, plugins)        |
| `vimrc`    | `~/.vimrc`      | Vim config (habamax colorscheme, editing defaults)    |
| `p10k.zsh` | `~/.p10k.zsh`   | powerlevel10k prompt configuration                    |
| `gitconfig`| `~/.gitconfig`  | git configuration (user, aliases, defaults)           |

## Install on a new machine

```sh
git clone <repo-url> ~/projects/dotfiles
~/projects/dotfiles/install.sh
```

`install.sh` is safe to re-run. Existing symlinks are replaced; a real file
already at the target is backed up to `<file>.backup` before being linked.
It also runs `brew bundle` to install the Homebrew packages in `Brewfile`
(skipped with a notice if Homebrew isn't installed).

## Dependencies

Some configs assume external tools are installed. These are listed in
`Brewfile` and installed automatically by `install.sh`:

| Tool        | Used by                                    |
|-------------|--------------------------------------------|
| `git-delta` | `gitconfig` (`core.pager = delta`)         |

To install/update them manually: `brew bundle --file=Brewfile`.

## Adding a new dotfile

1. Move the file into the repo without its leading dot
   (e.g. `mv ~/.gitconfig ~/projects/dotfiles/gitconfig`).
2. Add a `link` line for it in `install.sh`.
3. Re-run `install.sh` to create the symlink.
