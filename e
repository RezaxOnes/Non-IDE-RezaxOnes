#!/bin/bash

if [[ $# -lt 2 ]]; then
    echo "Usage: edit <editor> <file/path>"
    exit 1
fi

editor="$1"
shift
file="$*"

if [[ ! -f "$file" ]]; then
    echo "Error: File '$file' Khong Ton Tai."
    exit 1
fi

if [[ "$editor" == "vscode" || "$editor" == "vsc" ]]; then
 code "$file"
elif [[ "$editor" == "gte" ||  "$editor" == "gt" ]]; then
 gnome-text-editor "$file"
elif [[ "$editor" == "nn" ||  "$editor" == "n" ]]; then
 nano "$file"
elif [[ "$editor" == "vm" ||  "$editor" == "v" ]]; then
 vim "$file"
elif [[ "$editor" == "nvm" ||  "$editor" == "nv" ]]; then
 nvim "$file"
else
 $editor "$file"
fi
