# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Homebrew (Apple Silicon). Guarded so it's a no-op until brew is installed.
[[ -x /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
zstyle ':omz:update' mode auto      # update automatically without asking
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Remove the underline that zsh-syntax-highlighting applies to several token types.
# By default these all use "underline": path, path_prefix, precommand,
# autodirectory, and suffix-alias.
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
ZSH_HIGHLIGHT_STYLES[precommand]=fg=green
ZSH_HIGHLIGHT_STYLES[autodirectory]=fg=green
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=green

# User configuration
# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# ls colors (BSD/macOS ls, enabled by oh-my-zsh's `ls -G` alias).
# 11 fg/bg letter pairs; a=black b=red c=green d=brown e=blue f=magenta
# g=cyan h=grey, uppercase=bright, x=default. Differs from the built-in
# default only in: directory cyan (gx), executable green (cx).
# Plain files have no slot, so they stay the terminal's default color.
export LSCOLORS="gxfxcxdxcxegedabagacad"

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Personal aliases are defined in ~/.oh-my-zsh/custom/aliases.zsh

# Added by Devin
export PATH="/Users/mcconnpa/.codeium/windsurf/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Claude Code (installed to ~/.local/bin)
export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix nvm)/nvm.sh" ] && \. "$(brew --prefix nvm)/nvm.sh"  # This loads nvm
[ -s "$(brew --prefix nvm)/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix nvm)/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
