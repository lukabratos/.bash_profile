# Prompt Settings
PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \w\[\033[0;32m\]\n$(git branch 2>/dev/null | grep "^*" | colrm 1 2)\[\033[0;32m\] └─\[\033[0m\033[0;32m\]\$\[\033[0m\033[0;32m\]\[\033[0m\] '

alias ls="ls -Gp"

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# z Settings
. /usr/local/etc/profile.d/z.sh

# Golang
export GOPATH=$HOME/Developer/go
export PATH=$PATH:$GOPATH/bin

# Git Autocomplete
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion 

# Git Aliases
alias gp='git push'
alias gpm='git push origin master'
alias gst='git status -sb'
alias gb='git branch'
alias gc='git commit -a'
alias gd='git diff --color | diff-so-fancy'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gh="open \`git remote -v | grep git@github.com | grep fetch | head -1 | cut -f2 | cut -d' ' -f1 | sed -e's/:/\//' -e 's/git@/http:\/\//'\`"
gbd () { git branch -D "$1"; }
gch () {
  branch=$(git branch | awk '!/\*/'| fzf)
  git checkout $branch
}
rmtag() { git tag -d "$1"; git push origin :refs/tags/"$1"; };

# iOS
alias rmdd='rm -rf ~/Library/Developer/Xcode/DerivedData'

# History Search
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

export HISTSIZE=10000000
export HISTFILESIZE=10000000000

# Xcode
openx(){ 
  xed .
}

# yarn
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH=/Users/luka/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;
