#!/bin/sh

dir=`mktemp -d -t pinkpony` && cd $dir

if [[ "$OSTYPE" =~ ^darwin ]]
then
   echo "I'm on a mac!"
   echo `pwd`
fi

rm -rf $dir
