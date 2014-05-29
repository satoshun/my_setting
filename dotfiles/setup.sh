#!/bin/sh

SYMLINK_LIST="
bash_profile
bash_common
bashrc
gitconfig
gitignore_global
tigrc
mongorc.js
my.cnf
codeintel/config
agignore
tern-project
shalias
shenv
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
