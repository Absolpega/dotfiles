#!/bin/sh

whoami

grep -v '^$' "~/.local/share/chezmoi/deps.txt" | paru --needed -S -
