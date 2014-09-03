################################################################################
# misc
################################################################################

# base
MANPATH=/usr/local/share/man:$MANPATH


################################################################################
# bash prompt
################################################################################

#function parse_git_dirty {
#  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
#}
#function parse_git_branch {
#  ref = git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
#  echo $ref
#}

#RED="\[\033[0;31m\]"
#YELLOW="\[\033[0;33m\]"
#GREEN="\[\033[0;32m\]"
#NO_COLOUR="\[\033[0m\]"

#export PS1="$GREEN\u@\h$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "


################################################################################
# powerline-shell
################################################################################

function powerline_precmd() {
  export PS1="$(/Users/RCline-MRPro/Sites/powerline-shell/powerline-shell.py $? --shell zsh 2> /dev/null)"
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
export GIT_COMMITTER_EMAIL="ryan.cline@twcable.com"
export GIT_AUTHOR_NAME="Ryan Cline"
export GIT_AUTHOR_EMAIL="ryan.cline@twcable.com"

# github
export GITHUB_USER='rcline'


################################################################################
# chruby
################################################################################

source $(brew --prefix chruby)/share/chruby/chruby.sh
chruby 2

