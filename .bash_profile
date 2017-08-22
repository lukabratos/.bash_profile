# Prompt Settings
PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \w\[\033[0;32m\]\n$(git branch 2>/dev/null | grep "^*" | colrm 1 2)\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\]\[\033[0m\] '

alias ls="ls -Gp"

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# z Settings
. /usr/local/etc/profile.d/z.sh

# Golang
export GOPATH=$HOME/Developer/go

# Git Autocomplete
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion 

# Git Aliases
alias gp='git push'
alias gst='git status -sb'
alias gb='git branch'
alias gc='git commit -a'
alias gd='git diff --color | diff-so-fancy'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
gbd () { git branch -D "$1"; }
gch () { git checkout "$1"; }

# iOS
alias rmdd='rm -rf ~/Library/Developer/Xcode/DerivedData'

# History Search
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

export HISTSIZE=10000000
export HISTFILESIZE=10000000000
