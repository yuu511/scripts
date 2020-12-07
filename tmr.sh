#!/bin/bash
FILES=""
if [ -p /dev/stdin ]; then
  echo "Data Piped!"
  DIRECTORY=$1
  echo "Downloading to $DIRECTORY"
  
  if [ ! -d "$DIRECTORY" ]; then
    mkdir -p "$DIRECTORY"
  fi

  while IFS= read FILE; do
    echo "Downloading $line"
    transmission-remote --auth transmission:transmission --torrent-done-script /home/elijah/scripts/plexhooks.sh -l -a "$FILE" -w "$DIRECTORY"
  done
else
  if [ "$#" -lt 2 ]; then
    echo "wrong number of arguments."
    echo "$#"
    exit
  else
    DIRECTORY=$1
    echo "Downloading to $DIRECTORY"
    
    if [ ! -d "$DIRECTORY" ]; then
      mkdir -p "$DIRECTORY"
    fi
    FILES="${@:2}"
    for FILE in "$FILES"
    do
      echo "Downloading $FILE"
      transmission-remote --auth transmission:transmission --torrent-done-script /home/elijah/scripts/plexhooks.sh -l -a "$FILE" -w "$DIRECTORY"
    done
  fi
fi
