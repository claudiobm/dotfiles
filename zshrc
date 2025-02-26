# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="false"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler brew gem ruby github rvm rails zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export LANGUAGE=pt_BR.UTF-8
export LANG=pt_BR.UTF-8
export LC_ALL=pt_BR.UTF-8
export DOCKER_CLI_EXPERIMENTAL=enabled

# #Improvement Ruby GC
# export RUBY_GC_HEAP_INIT_SLOTS=231105
# export RUBY_GC_HEAP_FREE_SLOTS=169813
# export RUBY_GC_HEAP_GROWTH_FACTOR=1.03
# export RUBY_GC_HEAP_GROWTH_MAX_SLOTS=15832
# export RUBY_GC_HEAP_OLDOBJECT_LIMIT_FACTOR=2.0
# export RUBY_GC_MALLOC_LIMIT=70000000
# export RUBY_GC_MALLOC_LIMIT_MAX=147000000
# export RUBY_GC_MALLOC_LIMIT_GROWTH_FACTOR=1.68
# export RUBY_GC_OLDMALLOC_LIMIT=66089858
# export RUBY_GC_OLDMALLOC_LIMIT_MAX=138788702
# export RUBY_GC_OLDMALLOC_LIMIT_GROWTH_FACTOR=1.4

# Customize to your needs...
export PATH=/src/local/:$HOME/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/bin/android-sdk/tools:$HOME/bin

PATH=$PATH:/usr/local/share/npm/bin
PATH=$PATH:/usr/bin/adt-bundle-mac/tools
PATH=$PATH:/usr/bin/adt-bundle-mac/platform-tools
PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
PATH=$PATH:$HOME/Library/Android/sdk/tools/bin
PATH=$PATH:$HOME/Android/Sdk/platform-tools
PATH=$PATH:$HOME/Android/Sdk/tools/bin
PATH=$PATH:$HOME/Android/Sdk/cmdline-tools/latest/bin
PATH=$PATH:$HOME/.composer/vendor/bin
PATH=$PATH:/opt/mssql-tools/bin
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export ANDROID_SDK_ROOT=$HOME/Android/Sdk/
export ANDROID_HOME=$HOME/Android/Sdk/

#export PATH="$HOME/.rbenv/bin:$PATH"
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# PostgreSQL
export PGHOST=/tmp

export EDITOR='subl'

alias sourcetree='open -a SourceTree'

alias br='translate {=pt}'
alias en='translate {=us}'

alias tree= git log --graph --pretty=oneline
alias  lg= git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit

alias gtl='gtl(){ git tag --sort=-v:refname -n -l "${1}*" }; noglob gtl'
alias gdct='git describe --tags $(git rev-list --tags --max-count=1)'

alias mongostart='mongod --config /usr/local/etc/mongod.conf'
alias flushmemcache='echo 'flush_all' | nc localhost 11211'

[ -f $HOME/.rvm/scripts/rvm ] && source $HOME/.rvm/scripts/rvm

[ -f $HOME/.custom_bashrc ] && source $HOME/.custom_bashrc

[ -x "$(command -v brew)" ] && source $(brew --prefix asdf)/asdf.sh


[ -f $HOME/.asdf/asdf.sh ] && . $HOME/.asdf/asdf.sh
[ -f $HOME/.asdf/completions/asdf.bash ] && . $HOME/.asdf/completions/asdf.bash


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export PATH="/usr/local/opt/libpq/bin:$PATH"

export PATH="$PATH:/Users/claudiobm/.dotnet/tools"

#source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"

export FLUTTER_ROOT="$(asdf where flutter)"
