#!/bin/bash
# if [ "$#" -ne 2 ] ||  ! [ -d "$1" ] || ! [ -d "$2" ] ; then
#   echo "DIRECTORY DOES NOT EXIST, OR INCORRECT USAGE."
#   echo "Usage: $0 SRC_DIRECTORY EXTRACT_DIRECTORY" >&2
#   exit 1
# fi

echo $1

find "${@:2}" -type f -name "*.zip" -o -name "*.rar" -name "*.7z" | while read line; do
  BASENAME=$(basename "$line")
  NEWFOLDER="$1/$BASENAME"
  echo $NEWFOLDER
  echo $line
  mkdir "$NEWFOLDER"
  7z x "$line" -o"$NEWFOLDER" -y
done

find "${@:2}" -type f -name "*.tar" | while read line; do
  BASENAME=$(basename "$line")
  NEWFOLDER="$1/$BASENAME"
  mkdir "$NEWFOLDER"
  tar xvf "$line" -C "$NEWFOLDER"
done
