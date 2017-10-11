export SHELL=/bin/zsh
[ -z "$ZSH_VERSION" ] && exec /bin/zsh -l

export PGHOST=/tmp

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=/usr/local/sbin:$PATH
PATH=${PATH}:${HOME}/bin
PATH=$PATH:/src/local/:~/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/bin/android-sdk/tools:~/bin
export PATH=$PATH:/usr/local/share/npm/bin

#export PATH="$HOME/.rbenv/bin:$PATH"
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
