#!/bin/bash 

if [ $# -lt 1 ]; then
    >&2 echo Usage: `basename $0` path_to_steam_library
    exit 1
fi
