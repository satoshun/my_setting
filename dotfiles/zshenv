### basic
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$HOME/.nodebrew/current/bin
export PATH=$PATH:$HOME/.cabal/bin

### python
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source `which virtualenvwrapper.sh`
export pylint_path=/usr/local/bin
export LDFLAGS=-L/usr/local/lib/
export CFLAGS=-I/usr/local/include/

### ruby
export GEM_HOME=$HOME/gems
export PATH=$GEM_HOME/bin:$PATH


### chef
export PATH=/opt/chef/embedded/bin:$PATH


### golang
export GOPATH=$HOME/go
export GOROOT=`go env GOROOT`
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

### timezone
export TZ="Etc/UTC"

PATH=$PATH:~/bin
PATH=$PATH:/usr/local/sbin
export PATH

### etc
function alc() {
    if [ $# != 0 ]; then
        say "$*"
        w3m "http://eow.alc.co.jp/$*/UTF-8/?ref=sa"
    else
        w3m "http://www.alc.co.jp/"
    fi
}

### gradle
export GRADLE_OPTS="-Dorg.gradle.daemon=true -Xmx1024m -Xms256m"

### nodeprew
PATH=$HOME/.nodebrew/current/bin:$PATH


### ansible & vagrant
export ANSIBLE_HOSTS=~/ansible_hosts
PATH=~/git/my/etc/my_setting/vagrant/:$PATH


### homebrew
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Finished adapting your PATH environment variable for use with MacPorts.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

##
# Your previous /Users/satouhayabusa/.bash_profile file was backed up as /Users/satouhayabusa/.bash_profile.macports-saved_2013-10-07_at_11:19:58
##

# MacPorts Installer addition on 2013-10-07_at_11:19:58: adding an appropriate PATH variable for use with MacPorts.
# PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
# eval "$(rbenv init -)"
# PATH="$HOME/.rbenv/shims:$PATH"

## mecab
PATH=/usr/local/bin/mecab/bin:$PATH


## editor
EDITOR='Sublime Text'


### android
export ANDROID_HOME="/Applications/Android Studio.app/sdk"
export ANDROID_NDK_HOME=/usr/local/Cellar/android-ndk/r9d
PATH=$PATH:~/android-sdk/tools:~/android-sdk/platform-tools


### mongodb
MONGODB_PATH=~/mongo/bin
PATH=$MONGODB_PATH:$PATH

### octave
export PATH=/usr/texbin:$PATH


### calibre
PATH=$PATH:/Applications/calibre.app/Contents/MacOS
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig


### GoDirectory
export GOG_PATH=~/git
export GOG_HOOK_CMD="cd {{.Directory}} && cd ../ && subpro create etc {{.ProjectName}}"
export LCS_PATH=~/git
