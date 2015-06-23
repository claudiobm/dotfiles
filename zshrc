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
plugins=(git bundler brew gem ruby github rvm rails)

source $ZSH/oh-my-zsh.sh

[ -f ~/.custom_bashrc ] && source ~/.custom_bashrc

export LANGUAGE=pt_BR.UTF-8
export LANG=pt_BR.UTF-8
export LC_ALL=pt_BR.UTF-8

#Improvement Ruby GC
export RUBY_GC_HEAP_INIT_SLOTS=231105
export RUBY_GC_HEAP_FREE_SLOTS=169813
export RUBY_GC_HEAP_GROWTH_FACTOR=1.03
export RUBY_GC_HEAP_GROWTH_MAX_SLOTS=15832
export RUBY_GC_HEAP_OLDOBJECT_LIMIT_FACTOR=2.0
export RUBY_GC_MALLOC_LIMIT=70000000
export RUBY_GC_MALLOC_LIMIT_MAX=147000000
export RUBY_GC_MALLOC_LIMIT_GROWTH_FACTOR=1.68
export RUBY_GC_OLDMALLOC_LIMIT=66089858
export RUBY_GC_OLDMALLOC_LIMIT_MAX=138788702
export RUBY_GC_OLDMALLOC_LIMIT_GROWTH_FACTOR=1.4

# Customize to your needs...
export PATH=/src/local/:~/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/bin/android-sdk/tools:~/bin

PATH=$PATH:/usr/local/share/npm/bin
PATH=$PATH:/usr/bin/adt-bundle-mac/tools
PATH=$PATH:/usr/bin/adt-bundle-mac/platform-tools
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias subl='reattach-to-user-namespace subl'
alias stree='reattach-to-user-namespace stree'
alias open='reattach-to-user-namespace open'

# PostgreSQL
export PGHOST=/tmp

export EDITOR='subl'

alias sourcetree='open -a SourceTree'

alias br='translate {=pt}'
alias en='translate {=us}'

alias tree= git log --graph --pretty=oneline
alias  lg= git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit

alias mongostart='mongod --config /usr/local/etc/mongod.conf'
alias flushmemcache='echo 'flush_all' | nc localhost 11211'
