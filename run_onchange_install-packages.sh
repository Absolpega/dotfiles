#!/bin/sh

grep -v '^$' "$HOME/.local/share/chezmoi/deps.txt" | paru --needed -S -
