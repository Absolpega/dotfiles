#!/bin/sh

grep -v '^#\|^$' "$(chezmoi source-path)/deps.txt" | paru --needed -S -
