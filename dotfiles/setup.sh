#!/bin/sh

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

DOTFILES_PATH=$(cd $(dirname $0);pwd)
mkdir -p ~/.codeintel

for FILE in ${SYMLINK_LIST};
do
    rm -rf ~/.${FILE}
    ln -s ${DOTFILES_PATH}/${FILE} ~/.${FILE}
done

# mkdir -p ~/bin
# sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin

# zsh
# curl -L http://install.ohmyz.sh | sh

# curl -sSL https://get.rvm.io | bash
