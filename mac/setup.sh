#!/bin/sh

sublime()
{
    sublimeDir='~/Library/Application Support/Sublime\ Text\ 3'
    symSublimeDir='~/SkyDrive/preference/Sublime\ Text\ 3'

    rm -rf ${sublimeDir}/Installed\ Packages
    rm -rf ${sublimeDir}/Packages

    ln -s ${sublimeDir}/Installed\ Packages ${symSublimeDir}/Installed\ Packages
    ln -s ${sublimeDir}/Packages ${symSublimeDir}/Packages
}

sublime

# if [ !type pip ]; then
# fi
