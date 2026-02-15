
#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ | | | | | | (__
# (_/___|___|_| |_|_|  \___|
#

# Initialise ---------------------------------------------------------------------------------------

# ZSH history
HISTFILE="$HOME/.local/state/zshhistory"
HISTSIZE=500
SAVEHIST=500
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS

# cd into directories without cd
setopt autocd extendedglob

# nrfutil autocomplete
[[ -r "${HOME}/.nrfutil/share/nrfutil-completion/scripts/zsh/setup.zsh" ]] && \
    . "${HOME}/.nrfutil/share/nrfutil-completion/scripts/zsh/setup.zsh"

# Better auto-complete
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
autoload -Uz compinit
compinit -C "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"

# Fetch when not in TMux
# [[ -z "$TMUX" ]] && clear && ~/.config/fetch.sh


# Explicit Declaration -----------------------------------------------------------------------------

# System specific configs
export EDITOR=/opt/nvim-linux-x86_64/bin/nvim
export HACK_SCRIPTS="$HOME/Projects/.sysHacks"

# Save path for go packages
export GOPATH=$HOME/.local/share/go
export FZF_DEFAULT_OPTS="-i --cycle --ansi --color=dark --layout=reverse\
	--pointer='▶ ' --prompt='  '"
export FZF_DEFAULT_COMMAND='find . -maxdepth 1 ! -path "*git*"'

export GPG_TTY=$(tty)
#gpgconf --launch gpg-agent


# Integrations -------------------------------------------------------------------------------------

# Starship Prompt
eval "$(starship init zsh)"

# fzf 
eval "$(fzf --zsh)"

# Plugins
source "$HOME/.config/dotfiles/zsh/highlighting/zsh-syntax-highlighting.zsh"
source "$HOME/.config/dotfiles/zsh/autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/.config/dotfiles/zsh/history/zsh-history-substring-search.zsh"
source "$HOME/.config/dotfiles/zsh/karSH/devedit.zsh"
source "$HOME/.config/dotfiles/zsh/karSH/benches.zsh"

# Other Configs
source "$HOME/.config/dotfiles/zsh/configs/navigations.zsh"  # file processing
source "$HOME/.config/dotfiles/zsh/configs/management.zsh"   # manage config files
source "$HOME/.config/dotfiles/zsh/configs/convenience.zsh"  # aliases & keybinds
source "$HOME/.config/dotfiles/zsh/configs/devenv.zsh"       # development shortcuts
source "$HOME/.config/dotfiles/zsh/configs/hacks.zsh"        # :)


. "$HOME/.local/bin/env"

