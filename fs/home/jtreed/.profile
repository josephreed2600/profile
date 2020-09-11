setfont 2>/dev/null
alias en='env LANG=en_US.UTF-8'
alias l='ll'
alias ls='ls --color' #--color=auto
alias sl='ls'
alias lnl='ll --color | nl'
alias make='en make'
alias lock='i3lock -c 000000'
alias remake='make clean && bear make'
alias tbin='nc termbin.com 9999'
alias cld='cdl'

alias :q='exit'
alias qq='exit'
alias \\\\='exit'
alias eixt='exit'

alias g='git'
#alias git='en hub'
alias git-log='git log --graph --decorate --pretty=oneline --abbrev-commit master'
alias git-undo-unstaged='git checkout --'
alias git-unstage='git reset'
alias gco='git commit'
alias gcom='git commit -m'
alias gocm='gcom'
alias ga='git add'
alias gap='git add -p'
alias gb='git branch'
alias gd='git diff'
alias gdif='git diff'
alias gdc='git diff --cached'
alias gp='git push'
alias gr='git restore'
alias fetch='git fetch'
alias pull='git pull'
alias push='git push'
alias ck='git checkout'
alias mg='git merge'
alias gst='git status'

alias gdr='gcsf'
alias gradlew='./gradlew'
alias gclip='nohup xclip -selection clipboard 2>/dev/null'
alias clip='gclip'
alias pclip='xclip -selection clipboard -o'
alias S='pushd'
alias L='popd'
alias zt='zerotier-cli'
alias cat-recurse="find . -name '*.txt' -exec cat {} \;"
alias dcnet='dc -f ~/src/dc-lib/netlib.dc -'
alias f='ls'
function k --wraps 'kitty &' --description 'alias k=kitty &';  kitty 2>/dev/null &; end
function kvim --wraps 'kitty vim $argv &' --description 'alias kvim=kitty vim $argv &'; kitty vim $argv &; end
alias dumb='env TERM=dumb'
#alias gr='dumb ./gradlew --warning-mode none'

alias `='sudo'
alias svim='sudo vim'
alias svi='sudo vi'

alias service='sudo systemctl'
alias scl='service'
alias sctl='service'
alias sstat='scl status'
alias start='scl start'
alias restart='scl restart'
alias reload='scl reload'
alias stop='scl stop'
alias enable='scl enable'
alias disable='scl disable'

alias stx='startx'
alias sx='startx'
alias za='zathura'
alias s='start'
alias htop='htop -d5'

alias mount='sudo mount'
alias umount='sudo umount'
alias umont='umount'

alias +x='chmod +x'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'

set -x PATH ~/src/scripts $PATH
set -x PATH /usr/local/go/bin $PATH
set -x PATH /opt/brlcad/bin $PATH
set -x GOPATH ~/src/go
set -x EDITOR vim
set -x OPENSCADPATH ~/cad/lib
set -x MAKEFLAGS -j(nproc)
set -x BAT_PAGER "less -RF"
mesg y

source ~/.профиль
