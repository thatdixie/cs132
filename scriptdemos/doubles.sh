#!/bin/bash
oldword="x "
for word in $* ; do
    if [ $oldword == $word ] ; then
        echo $word
    else
        oldword=$word
    fi
done

