# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

. `brew --prefix`/etc/profile.d/z.sh
fpath=(/usr/local/share/zsh-completions $fpath)

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="3den"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(zaw gradle bower brew brew-cask cp docker golang history npm sublime zsh-syntax-highlighting ansible)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/Users/satouhayabusa/git/my/etc/my_setting/vagrant/:/Users/satouhayabusa/.nodebrew/current/bin:/Users/satouhayabusa/mongo/bin/:/usr/local/bin/mecab/bin:/Users/satouhayabusa/.rbenv/shims:/Users/satouhayabusa/.rbenv/shims:/opt/local/bin:/opt/local/sbin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/opt/chef/embedded/bin:/Users/satouhayabusa/gems/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/bin:/Users/satouhayabusa/go/bin:/Applications/Android Studio.app/sdk/tools:/Applications/Android Studio.app/sdk/platform-tools:/Users/satouhayabusa/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# for android
export JAVA_HOME=`/usr/libexec/java_home -v "1.8"`
export JAVA6_HOME=`/usr/libexec/java_home -v "1.6"`
export JAVA8_HOME=`/usr/libexec/java_home -v "1.8"`

. $HOME/.zshenv
. $HOME/.shalias
. $HOME/.shfunc
. $HOME/.zaw

if [ -f `brew --prefix`/etc/zsh_completion.d/subpro_zcompletion ]; then
    source `brew --prefix`/etc/zsh_completion.d/subpro_zcompletion
fi

setopt nolistbeep


# The next line updates PATH for the Google Cloud SDK.
# if [ -f /Users/satouhayabusa/google-cloud-sdk/path.zsh.inc ]; then
#     source '/Users/satouhayabusa/google-cloud-sdk/path.zsh.inc'
#     source '/Users/satouhayabusa/google-cloud-sdk/completion.zsh.inc'
# fi

if [ -f ~/bin/genymotion_peco.sh ]; then
    export GENYMOTION_APP_HOME=/Applications/Genymotion.app/
    source ~/bin/genymotion_peco.sh
fi
function gi() { curl http://gitignore.io/api/$@ ;}

# OPAM configuration
. /Users/satouhayabusa/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
