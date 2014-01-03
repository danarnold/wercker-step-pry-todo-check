#!/bin/sh

PRYLINES=`grep -Rs --exclude-dir .git --exclude-dir log --exclude-dir tmp -n binding.pry .`

if [ -n "$PRYLINES" ]; then
  fail "Pry(s) Found:\n$PRYLINES"
fi

