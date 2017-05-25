

#Environment variables
export ZSH_HOST_OS=$(uname | awk '{print tolower($0)}')
export EDITOR="vim"
export DISABLE_AUTO_TITLE=true

gimme () {
	grep -HrnIi --color=always $1 .
}

alias vi='vim'

case $ZSH_HOST_OS in
	darwin*)
  # Use gnu coreutils on OSX
  export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
  export MANPATH="$(brew --prefix coreutils)/libexec/gnuman:$MANPATH"

  alias stfu="osascript -e 'set volume output muted true'"
  alias flushdns="dscacheutil -flushcache"
  alias update='composer selfupdate; softwareupdate -i -a --verbose; brew doctor; brew update; brew upgrade; brew cleanup; npm update -g'


  # OSX settings
  #defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
  # Faster keyboard repeat rate
  defaults write NSGlobalDomain KeyRepeat -int 1
  defaults write NSGlobalDomain InitialKeyRepeat -int 12

  ;;
esac

dircolorrc=~/dircolors
eval "$(dircolors $dircolorrc)"

alias npms='npm -s'

alias ll='ls --color=auto -lah --group-directories-first '
alias lp='k --all'
alias llt='ls --color=auto -laht --group-directories-first' # Sort by newest first.
alias ..='cd ..'
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Filesystem
alias cp="cp -a"
# Live dangerously.
alias rm="rm -rf"

# DO NOT EVER ALIAS mkdir with -p parents option. IT WILL BREAK INHERITED ACL
# PERMISSIONS.
# http://serverfault.com/questions/197263/conflicts-between-acls-and-umask
# http://savannah.gnu.org/bugs/?19546
# http://debbugs.gnu.org/cgi/bugreport.cgi?bug=14371
# dane's pain is your gain
#alias mkdir="mkdir -p"
alias du="du -h --time"
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias belinux="find . -type f -exec dos2unix {} \;"