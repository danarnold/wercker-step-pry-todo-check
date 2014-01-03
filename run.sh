#!/bin/sh

debug `pwd`
debug `ls -R`

PRYLINES=`grep -Rs --exclude-dir .git --exclude-dir log --exclude-dir tmp -n binding.pry .`

if [ -n "$PRYLINES" ]; then
  #fail "Pry(s) Found:\n$PRYLINES"
  echo 'Broken on pry'
fi

TODOLINES=`grep -Rs --exclude-dir .git --exclude-dir log --exclude-dir tmp -n TODO: .`

if [ -n "$TODOLINES" ]; then
  # fail "TODO(s) Found:\n$TODOLINES"
  echo 'Broken on TODO'
fi
