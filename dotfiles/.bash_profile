. ~/.bash_common
. ~/.bash_programming

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
