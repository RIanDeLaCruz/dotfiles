# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode node npm)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/.rvm/bin:~/.rvm/bin:~/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export START="/Volumes/Storage"
if [[ $PWD == $HOME ]]; then
  cd $START
fi

source $ZSH/oh-my-zsh.sh

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
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias redis-browse="cd ~ && redis-browser --url redis://localhost:6379"
alias http="python -m SimpleHTTPServer"
alias gdn="cd /Volumes/Storage/TheGUIDON"
alias CompSAt="cd /Volumes/Storage/CompSAt"
alias vol="cd /Volumes/Storage"
alias gfab="git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done"
alias md2pdf="markdown-pdf -s $1 $2"
#alias vim="nvim"
alias ateneo="cd /Volumes/Storage/MEGA/ATENEO/Senior/Second\ Semester"
alias lsize="ls -lShog"

function mdir() {
  mkdir "$1" && cd $_
}

# Create the grippass function which handles running the grip program with
# an access token.
# Grip is a program that enables one to view their Markdown files locally
# Grip is found here: https://github.com/joeyespo/grip
function grippass() {
  if [ "$1" = "" ]; then
    echo "Please pass a file with the token or paste the token as an argument"
  else
    while read -r LINE; do
      grip --pass "$LINE"
    done < "$1"
  fi
}

function install_jsctags {
  npm install jsctags
  # https://github.com/mozilla/doctorjs/issues/52
  gsed -i '51i tags: [],' ./node_modules/jsctags/jsctags/ctags/index.js
}

man() {
  env \
    LESS_TERMCAP_md=$'\e[1;36m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[1;40;92m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[1;32m' \
      man "$@"
}

bindkey -v
DEFAULT_USER=`whoami`

export DEFAULT_USER=`whoami`

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/phantomjs"
export PATH="$PATH:/usr/local/bin/powerline_config"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.rvm/gems/ruby-2.3.1/bin:$PATH"
export PATH="$PATH:$HOME/Library/Android/sdk/tools"
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"
export PATH="$PATH:/usr/local/go/bin"

export NVM_DIR="/Users/IanDeLaCruz/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm export PATH="$PATH:$HOME/.yarn/bin"
export JUNIT_HOME="/Library/JUNIT"
export CLASSPATH="$JUNIT_HOME/junit4.10.jar"
export EDITOR="vim"
export GOPATH="/Volumes/Storage/GoWorkspace"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
