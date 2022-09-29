#!/bin/bash

QUARTZ="/mnt/uasis/quartz/dnd"
HUGO_OBS="/mnt/uasis/quartz/libs/hugo-obsidian"
OBS_EXP="/mnt/uasis/quartz/libs/obsidian-export"
VAULT="/mnt/uasis5/nextcloud/data/cloutdrive/files/obsidian/DnD"

export GOPATH=/Users/$USER/go; 
export GOROOT="$(/usr/local/bin/brew --prefix golang)/libexec"; 
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"; 
cd ~/Sites/quartz; nodemon -w ~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/bkb -w ~/Sites/quartz/assets/js -w ~/Sites/quartz/assets/styles -w ~/Sites/quartz/layouts -w ~/Sites/quartz/config.toml -w ~/Sites/quartz/data/config.yaml -x "~/Sites/quartz/compile.sh" -e md,html,js,scss,xml
