################################################################################
# misc
################################################################################

# base
MANPATH=/usr/local/share/man:$MANPATH

HISTFILESIZE=10000000


################################################################################
# aliases
################################################################################

alias opennocors='open -a /Applications/Google\ Chrome\ Canary.app --args --disable-web-security -url "http://www.google.com"'

alias blizz='open -a /Applications/Games/Battle.net.app'

alias evernote='open -a /Applications/Evernote.app'

alias upstreambranchcount='find .the/refs/remotes/upstream/ -type f -print | wc -l'

alias hangout='open http://g.co/hangout'

alias present='open http://g.co/present'

alias _json='underscore print —color'

alias n-v='n ls | grep ο'

alias npmrmi='rm -rf node_modules && npm cache clean && npm install'

alias yar='yarn'
alias yarh='yarn'
alias yanr='yarn'
alias gi='git'
alias got='git'


################################################################################
# powerline-shell
################################################################################

function powerline_precmd() {
  export PS1="$(/Users/rcline/Sites/powerline-shell/powerline-shell.py --mode compatible $? --shell zsh 2> /dev/null)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

install_powerline_precmd


################################################################################
# program search path
################################################################################

typeset -gU cdpath fpath mailpath path

#
# paths searched for programs
#

path=(
  $HOME/local/bin
  /usr/local/{bin,sbin}      # obviously :)
  /usr/libexec               # lots of non-obvious goodies in here (i.e. PlistBuddy)
  $HOME/.homebrew/{bin,sbin} # homebrew@$HOME
  $path                      # system defaults
)


################################################################################
# homebrew
################################################################################

#
# brew cask options
#

# ensure homebrew cask links applications into `/Applications` (I like to see everything in one place)
# obviously you would not do this on a multi-user system as this could cause confusion.
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

#
# man page search paths
#

# homebrew
MANPATH=$HOME/.homebrew/share/man:$MANPATH


################################################################################
# terminal
################################################################################

export TERM=xterm-256color


################################################################################
# language
################################################################################

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi


################################################################################
# git
################################################################################

# USER SETUP
export GIT_COMMITTER_NAME="Ryan Cline"
export GIT_COMMITTER_EMAIL="cline.ryan@gmail.com"
export GIT_AUTHOR_NAME="Ryan Cline"
export GIT_AUTHOR_EMAIL="cline.ryan@gmail.com"

# github
export GITHUB_USER='rcline'


################################################################################
# npm
################################################################################

export JOBS=max

# n
# Added by n-install (see http://git.io/n-install-repo).
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"


################################################################################
# chruby
################################################################################

source $(brew --prefix chruby)/share/chruby/chruby.sh
chruby 2

