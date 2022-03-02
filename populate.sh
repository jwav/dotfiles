#!/usr/bin/bash

echo This script creates symlinks in $HOME to local dotfiles passed as arguments

# for each argument ...
for item in $*; do
    # check if it's a local file
    fullname=$item
    filename=`basename $item`
    folder=`dirname $item`
    destination=$HOME
    echo fullname: $fullname
    echo folder: $folder
    echo basename: $filename
    if test ! -e $folder/$filename; then
        echo $folder/$filename does not exist!
        continue
    fi


    if test -e $HOME/$filename; then
        echo $HOME/$filename already exists !
        read -p "delete file? [Y/n] " yn
        case $yn in
            [Yy]* )
                echo Force-creating symlink for $folder/$filename at $HOME/$filename
                ln -sf $PWD/$filename $HOME/$filename
                break;;
            [Nn]* ) 
                echo Leaving $HOME/$filename alone...
                continue;;
            * )
                echo "Please answer y or n."
                echo Force-creating symlink for $folder/$filename at $HOME/$filename
                ln -sf $PWD/$filename $HOME/$filename
                break;;


            esac
        else
            echo Creating symlink for $folder/$filename at $HOME/$filename
            ln -s $PWD/$filename $HOME/$filename
    fi


done



#TO BE CONTINUED

