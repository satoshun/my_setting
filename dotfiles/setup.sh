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
tmuxinator
shfunc
tern-project
tigrc
zaw
zshrc
zshenv
tmux.conf
csscomb.json
"

# .jshintrc
# .gradle

mkdir -p ~/.codeintel
DOTFILES_PATH=$(cd $(dirname $0);pwd)

for file in ${SYMLINK_LIST};
do
    ln -sf ${DOTFILES_PATH}/${file} ~/.${file}
done

# mkdir -p ~/bin
# sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin

# zsh
# curl -L http://install.ohmyz.sh | sh

# curl -sSL https://get.rvm.io | bash

# curl -o diff-highlight https://raw.githubusercontent.com/git/git/master/contrib/diff-highlight/diff-highlight

# npm install -g jshint csslint 
# sudo easy_install http://closure-linter.googlecode.com/files/closure_linter-latest.tar.gz
