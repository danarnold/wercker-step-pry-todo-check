#!/bin/sh

PRYLINES=`grep -Rs --exclude-dir .git --exclude-dir log --exclude-dir tmp -n binding.pry . || echo`

if [ -n "$PRYLINES" ]; then
  fail "Pry(s) Found:\n$PRYLINES"
fi

TODOLINES=`grep -Rs --exclude-dir .git --exclude-dir log --exclude-dir tmp -n TODO: . || echo`

if [ -n "$TODOLINES" ]; then
  fail "TODO(s) Found:\n$TODOLINES"
fi
