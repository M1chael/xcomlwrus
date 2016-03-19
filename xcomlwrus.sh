#!/bin/bash 

cd "${BASH_SOURCE%/*}" || exit

if [ $# -lt 1 ]; then
    >&2 echo Usage: `basename $0` path_to_steam_library
    exit 1
fi

RUSPATH="steamapps/common/XCom-Enemy-Unknown/xew/xcomgame/localization/rus"
RUSFILES="rus/*"
for file in $RUSFILES
do
	cp $1/$RUSPATH/${file##*/} $1/$RUSPATH/${file##*/}_bkp
	cp $file $1/$RUSPATH/
done
