#!/usr/bin/bash

for item in $*; do
    if test ! -f $item; then
        echo $item does not exist!
        continue
    fi

    fullname=$item
    filename=`basename $item`
    folder=`dirname $item`
    
    if test -f ./$filename; then
        echo ./$filename already exists !
    fi
    # echo fullname: $fullname
    # echo folder: $folder
    # echo basename: $filename

    echo Moving $item...
    mv $fullname . 
    #ln -s realfile link
    echo Creating symlink $item
    ln -s `pwd`/$filename $fullname
    echo Adding $filename to git
    git add $filename

    # ls
    # ls $fullname
done



#TO BE CONTINUED

