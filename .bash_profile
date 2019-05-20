alias ls='ls -G'
alias mv='mv -iv'
alias rm='rm -iv'
alias cp='cp -iv'

export EDITOR=vim
export VISUAL=vim
export PS1="\t@ \w $ "

export LC_ALL=$LANG
source ~/perl5/perlbrew/etc/bashrc

#alias gsed=sed
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$M2:$PATH:$HOME/prog/apache-maven-3.5.3/bin

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

alias config='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
