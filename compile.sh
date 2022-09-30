#!/bin/bash

QUARTZ="/mnt/uasis5/quartz/dnd"
HUGO_OBS="/mnt/uasis5/quartz/dnd/libs/hugo-obsidian"
OBS_EXP="/mnt/uasis5/quartz/dnd/libs/obsidian-export"
VAULT="/mnt/uasis5/obsidian/vaults/DnD"

cd $HUGO_OBS; 
rm -fr $QUARTZ/content/*; 
rm -rf $QUARTZ/public/*; 
$OBS_EXP/target/debug/obsidian-export --add-titles --frontmatter=always $VAULT $QUARTZ/content; 
go run $HUGO_OBS -input=$QUARTZ/content -output=$QUARTZ/assets/indices -index -root=$QUARTZ; (cd $QUARTZ && hugo --minify)