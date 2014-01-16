#!/bin/sh

sublime()
{
    sublimeDir=~/Library/Application\ Support/Sublime\ Text\ 3
    symSublimeDir=~/SkyDrive/preference/Sublime\ Text\ 3

    rm -rf "${sublimeDir}/Installed Packages"
    rm -rf "${sublimeDir}/Packages"

    ln -s "${symSublimeDir}/Installed Packages" "${sublimeDir}/Installed Packages"
    ln -s "${symSublimeDir}/Packages" "${sublimeDir}/Packages"
}

xcode()
{
    ln -s ~/git/my/etc/my_setting/mac/Xcode/KeyBindings /Users/satouhayabusa/Library/Developer/Xcode/UserData/KeyBindings
}

sublime
xcode

# if [ !type pip ]; then
# fi
