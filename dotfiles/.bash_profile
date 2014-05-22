export LANG=en_US.UTF-8

source ~/.bash_common


##
# Your previous /Users/satouhayabusa/.bash_profile file was backed up as /Users/satouhayabusa/.bash_profile.macports-saved_2012-09-03_at_10:05:30
##

# Finished adapting your PATH environment variable for use with MacPorts.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

##
# Your previous /Users/satouhayabusa/.bash_profile file was backed up as /Users/satouhayabusa/.bash_profile.macports-saved_2013-10-07_at_11:19:58
##

# MacPorts Installer addition on 2013-10-07_at_11:19:58: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"

## mecab
export PATH=/usr/local/bin/mecab/bin:$PATH


## editor
EDITOR='Sublime Text'

alias sub='open -a "Sublime Text"'
alias pypi="python setup.py register; python setup.py sdist upload"
alias pypi3="python3 setup.py register; python3 setup.py sdist upload"
alias ctags="`brew --prefix`/bin/ctags"


### android
export ANDROID_HOME="/Applications/Android Studio.app/sdk"
export ANDROID_NDK_HOME=/usr/local/Cellar/android-ndk/r9d
export PATH=$PATH:/Applications/Android\ Studio.app/sdk/tools:/Applications/Android\ Studio.app/sdk/platform-tools
alias monitor='/Applications/Android\ Studio.app/sdk/tools/monitor'


### mongodb
MONGODB_PATH=~/mongo/bin/
export PATH=$MONGODB_PATH:$PATH


### gradle
export GRADLE_OPTS="-Dorg.gradle.daemon=true"


### nodeprew
export PATH=$HOME/.nodebrew/current/bin:$PATH


### ansible & vagrant
export ANSIBLE_HOSTS=~/ansible_hosts
export PATH=~/git/my/etc/my_setting/vagrant/:$PATH


### homebrew
export HOMEBREW_CASK_OPTS="--appdir=/Applications"


### etc
function alc() {
    if [ $# != 0 ]; then
        say "$*"
        w3m "http://eow.alc.co.jp/$*/UTF-8/?ref=sa"
    else
        w3m "http://www.alc.co.jp/"
    fi
}

### timezone
export TZ="Etc/UTC"
