#!/bin/sh

SYMLINK_LIST="
.bash_profile
.bash_common
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
.tern-project
"

DOTFILES_PATH=$(cd $(dirname $0);pwd)
mkdir -p ~/.codeintel

for FILE in $SYMLINK_LIST;
do
    rm -fr ~/$FILE
    ln -s $DOTFILES_PATH/$FILE ~/$FILE
done

mkdir -p ~/bin
sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin
