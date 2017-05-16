# Export
export EDITOR='nvim'
export _JAVA_AWT_WM_NONREPARTENTING=1

# Source antigen
source /usr/share/zsh/share/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle history
antigen bundle jump
antigen bundle zsh-sudo

# Syntax highlighting and autosuggestions bundle
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Apply
antigen apply

# Other sources
source $HOME/.aliases
source $HOME/.scripts/tmuxinator.zsh
source $HOME/.scripts/prompts/spaceship.zsh-theme

# termite
if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi
