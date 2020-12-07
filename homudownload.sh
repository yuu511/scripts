#!/bin/bash
# download whatever tbh

FILES=""
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
  
  SEARCHTERM="$2"

  SINGLEMAGNET=$(homura -t search "$SEARCHTERM" | head -n 1)

  transmission-remote --auth transmission:transmission --torrent-done-script /home/elijah/scripts/plexhooks.sh -l -a "$SINGLEMAGNET" -w "$DIRECTORY"
fi
