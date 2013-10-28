#!/bin/sh

SYMLINK_LIST="
.bash_profile
.bash_common
.bash_programming
.bashrc
.gitconfig
.gitignore_global
"

DOTFILES_PATH=$(cd $(dirname $0);pwd)

BIN_PATH=$DOTFILES_PATH/bin
BIN_LIST=`ls $BIN_PATH`
for FILE in $BIN_LIST;
do
    chmod +x $BIN_PATH/$FILE
done

for FILE in $SYMLINK_LIST;
do
    rm -fr ~/$FILE
    ln -s $DOTFILES_PATH/$FILE ~/$FILE
done
