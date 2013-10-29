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

sublime

# if [ !type pip ]; then
# fi
