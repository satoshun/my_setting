#!/bin/bash

SYMLINK_LIST="
agignore
bash_common
bash_profile
bashrc
codeintel/config
gitconfig
gitignore_global
inputrc
mongorc.js
my.cnf
shalias
shenv
tern-project
tigrc
zaw
zshrc
"

# .jshintrc
# .gradle

mkdir -p ~/.codeintel

for path in ${SYMLINK_LIST};
do
    ln -sf ${HOME}/${path} ~/.${path}
done

# mkdir -p ~/bin
# sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin

# zsh
# curl -L http://install.ohmyz.sh | sh

# curl -sSL https://get.rvm.io | bash

# curl -o diff-highlight https://raw.githubusercontent.com/git/git/master/contrib/diff-highlight/diff-highlight
