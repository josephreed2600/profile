alias en='env LANG=en_US.UTF-8'
alias ls='ls --color=auto'
alias git='en hub'
alias git-log='git log --graph --decorate --pretty=oneline --abbrev-commit master'
alias git-undo-unstaged='git checkout --'
alias git-unstage='git reset --hard'
alias make='en make'
alias lock='i3lock -c 000000'
alias remake='make clean && bear make'
alias tbin='nc termbin.com 9999'
alias :q='exit'
alias qq='exit'
alias \\\\='exit'
alias gco='git commit'
alias gcom='git commit -m'
alias gocm='gcom'
alias ga='git add'
alias gap='git add -p'
alias gd='git diff'
alias gdif='git diff'
alias gdc='git diff --cached'
alias gp='git push'
alias push='git push'
alias pull='git pull'
alias gdr='gcsf'
alias gradlew='./gradlew'
alias gclip='xclip -selection clipboard'
alias pclip='xclip -selection clipboard -o'
alias S='pushd'
alias L='popd'
alias zt='zerotier-cli'

#export PATH=/usr/local/texlive/2018/bin/x86_64-linux:$PATH
set -x PATH /usr/local/texlive/2018/bin/x86_64-linux $PATH
set -x PATH /opt/maple2018/bin $PATH
set -x PATH ~/src/scripts/emoji $PATH
set -x PATH ~/src/scripts $PATH
set -x EDITOR vi
set -x OPENSCADPATH ~/cad/lib
set -x MAKEFLAGS -j(nproc)
mesg y

source ~/.профиль
