# oh-my-zsh configs at top
# ...


################################################################################
# User configuration
################################################################################

export LESS=-XFR

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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

alias setuprepo='node ~/Sites/scripts/setup-git-repo.js'


################################################################################
# Theme
################################################################################

# https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
ZSH_THEME="powerlevel9k/powerlevel9k"

# Remove user prompt
DEFAULT_USER=rcline

# Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


################################################################################
# Auto suggestions
################################################################################

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh


################################################################################
# git
################################################################################

# USER SETUP
export GIT_COMMITTER_NAME="Ryan Cline"
export GIT_COMMITTER_EMAIL="rcline@shutterstock.com"
export GIT_AUTHOR_NAME="Ryan Cline"
export GIT_AUTHOR_EMAIL="rcline@shutterstock.com"

# github
export GITHUB_USER='rcline'


################################################################################
# npm
################################################################################

export JOBS=max
