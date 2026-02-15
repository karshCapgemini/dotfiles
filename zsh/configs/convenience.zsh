
#- SHORTCUTS -------------------------------------------------------------------
#- aliases and keybinds --------------------------------------------------------

# Updated defaults behaviour
bindkey "^[l"     clear-screen
bindkey '^[[1;9D' backward-word
bindkey '^[[1;9C' forward-word
bindkey '^[[3~'   delete-char
bindkey '^[[1;9B' backward-kill-word
bindkey '^[[3;5~' kill-word

bindkey '^[[1;3D' beginning-of-line
bindkey '^[[1;3C' end-of-line

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Default Behaviour
alias df='df -h'
alias diff='diff --color='always''
alias ed='ed -p "> "'
alias re='grep -o -E'
alias sed='sed -r'

# Common Actions
alias x=exit
alias up='cd ..'
alias weather='clear; curl wttr.in/melbourne'
alias path="echo $PATH | tr ':' '\n'"

# List Files
alias l='eza -lag --color=always --group-directories-first --icons'
alias ls='eza -g --icons'
alias la='eza -a --color=always --group-directories-first --icons'
alias tree='eza -T --group-directories-first --icons=always -L'
alias treg='eza -T --group-directories-first --icons=always --git-ignore -L'
trec() {
    eza -T --group-directories-first -F -L $1 | clip.exe
}

# Easier Calls
alias c='batcat -n'
alias cat='batcat -pp'
alias htop=btop
alias ntop='sudo bandwhich'
alias pip='python3 -m pip'
alias py=python3
alias python=python3

# System Packages
alias pkga='sudo apt install --no-install-recommends'
alias pkgr='sudo apt purge'
alias pkgs='apt search'
alias pkgl='apt list --installed'
alias pkgx='sudo apt autoclean; sudo apt autoremove'

alias update='
    figlet -w $(tput cols) "Update Packages";
    sudo apt update;
    sudo apt upgrade;

    figlet -w $(tput cols) "System Cleanup"
    sudo apt autoclean;
    sudo apt autoremove;
'

