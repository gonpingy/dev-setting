# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi

export PATH="/Applications/android-sdk-macosx/platform-tools:$PATH"

# User specific aliases and functions
export EDITOR=vim

# 1  directory
# 2  symbolic link
# 3  socket
# 4  pipe
# 5  executable
# 6  block special
# 7  character special
# 8  executable with setuid bit set
# 9  executable with setgid bit set
# 10 directory writable to others, with sticky bit
# 11 directory writable to others, without sticky bit
# a - black                             A - bold black, usually shows up as dark grey
# b - red                               B - bold red
# c - green                             C - bold green
# d - brown                             D - bold brown
# e - blue                              E - bold blue
# f - magenta                           F - bold magenta
# g - cyan                              G - bold cyan
# h - light gray                        H - bold light gray
# x - default foreground or background
export LSCOLORS="xxCxcxdxBxegedabagacad"

## alias
# sudo
alias s='sudo '

# .bashrc
alias vb='vim ~/.bashrc'
alias sb='source ~/.bashrc'
alias vbp='vim ~/.bash_profile'
alias sbp='source ~/.bash_profile'

# .vimrc
alias vv='vim ~/.vimrc'

# rm
alias r='rm -ir'
alias rr='rm -Ir'

# ls
alias l='ls -vFG'
alias ll='ls -vlFG'
alias lg='ls -G | grep'

# tail
alias tf='tail -f'

# grep
alias grep='grep --color=auto'
alias g='grep'

# vim
if [ -f /home/bin/vim ]; then
alias v='vim'
else
alias vim='vi'
alias v='vi'
fi

alias sv='sudo vim'

# ps
alias p='ps auxww'
alias pg='ps auxww | grep'

# diff
alias diff='diff -u'

# phpunit
alias phpunit='phpunit --verbose '

# tmux
# utf-8オプションで実行
alias tmux='tmux -u'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# added by travis gem
[ -f /Users/gonpingy/.travis/travis.sh ] && source /Users/gonpingy/.travis/travis.sh
