#!/bin/bash

PRYLINES=$(grep -Rs --exclude-dir .git --exclude-dir log --exclude-dir tmp -n binding.pry .)

if [ -n "$PRYLINES" ]; then
  error "Pry(s) Found:\n$PRYLINES"
  exit 1
fi

TODOLINES=$(grep -Rs --exclude-dir .git --exclude-dir log --exclude-dir tmp -n TODO: .)

if [ -n "$TODOLINES" ]; then
  error "TODO(s) Found:\n$TODOLINES"
  exit 1
fi
