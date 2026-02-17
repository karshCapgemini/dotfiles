
#- DEVELOPMENT -------------------------------------------------------------------------------------
#- shortcuts for common dev actions ----------------------------------------------------------------

# Vim Shortcuts ------------------------------------------------------------------------------------

v() {
    if [ "$#" -lt 2 ]; then
        $EDITOR $1
    elif [ "$(tput cols)" -lt 126 ]; then
        $EDITOR -o2 $@
    else
        $EDITOR -O2 $@
    fi
}

alias sv="sudo $EDITOR"
alias p="gt ~/Projects"


# Git Shortcuts ------------------------------------------------------------------------------------

gitg() {
    URL="git@github.com:$(echo $1 | cut -c 20-).git"
    git clone --depth=1 --recursive --verbose "$URL" $2
    cd "${2:-$(basename "$1")}"
}

gitR() { git rebase -i HEAD~$1 }
gitt() { touch $1; git add $1; git commit -m "create $1" }

alias sp='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/gitlab'
alias g=lazygit
alias d=lazydocker
alias gits='git status'
alias gitS='git switch'
alias gitP='git push'
alias gitp='git pull'
alias gitl='git log'
alias gitk='git checkout'
alias gitb='git branch -a'
alias gitu="git reset --soft 'HEAD^'"


# Hack Scripts -------------------------------------------------------------------------------------

pinit() { $HOME/Projects/.init.sh $@; cd "${1%.*}"; main }

alias vic='vi ./src c h'

alias pins='
    pushd "$(git rev-parse --show-toplevel 2>/dev/null || pwd)/main/include" > /dev/null 2>&1;
    rg --no-line-number "^#define\s+([A-Z0-9_]+_(?:PIN|PORTS?))\s+(\d+)\b";
    popd > /dev/null 2>&1;
'

alias pyenv='
    pushd "$(git rev-parse --show-toplevel 2>/dev/null || pwd)" > /dev/null 2>&1;
    source ./.venv/bin/activate;
    popd > /dev/null 2>&1
'

alias pyreq="parent; pip install -r ./requirements.txt"

nrfconnect() {
    /opt/nrf-desktop/nrfconnect --no-sandbox >/dev/null 2>&1 & disown %+;
}
alias killnrfconnect='pkill -9 -f "/opt/nrf-desktop/nrfconnect" >/dev/null 2>&1 || true'
