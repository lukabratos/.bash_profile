# Prompt Settings
PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \w\[\033[0;32m\]\n$(git branch 2>/dev/null | grep "^*" | colrm 1 2)\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\]\[\033[0m\] '

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# z Settings
. /usr/local/etc/profile.d/z.sh

# Golang
export GOPATH=$HOME/Developer/go

# React Native Android
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

# Git Aliases
alias gst='git status -sb'
alias gb='git branch'
alias gc='git commit -a'
alias gd='git diff --color | diff-so-fancy'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
gbd () { git branch -D "$1"; }
gch () { git checkout "$1"; }
