#!/bin/sh

dir=`mktemp -d -t pinkpony` && cd $dir
PWD=`pwd`
STORAGEDIR='/tmp/.pp'
PPONY="${STORAGEDIR}/pinkpony.jpg"
mkdir -p ${STORAGEDIR}

if [[ "$OSTYPE" =~ ^darwin ]]
then
   /usr/bin/curl -o ${STORAGEDIR}/pinkpony.jpg https://raw.githubusercontent.com/pinkponybrigade/pp/master/assets/pinkpony.jpg
   /usr/bin/curl -o ${PWD}/wallpaper.applescript https://raw.githubusercontent.com/pinkponybrigade/pp/master/scripts/wallpaper.applescript
   osascript ${PWD}/wallpaper.applescript ${PPONY}
fi

rm -rf $dir
