#!/bin/sh

SYMLINK_LIST="
.bash_profile
.bash_common
.bash_programming
.bashrc
.gitconfig
.gitignore_global
.tigrc
.mongorc.js
.my.cnf
.codeintel/config
.gradle
.agignore
.jshintrc
"

DOTFILES_PATH=$(cd $(dirname $0);pwd)
mkdir -p ~/.codeintel

for FILE in $SYMLINK_LIST;
do
    rm -fr ~/$FILE
    ln -s $DOTFILES_PATH/$FILE ~/$FILE
done
