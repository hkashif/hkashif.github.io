#!/bin/bash
set -e

echo "Building site code ..."
jekyll build

echo "Copying code to github repo ..."
cp -r _site/* $HOME/work/github/hkashif.github.io/

echo "Committing and pushing changes ..."
cd $HOME/work/github/hkashif.github.io
git commit -a -m 'general site updates'
git push origin master

echo "Update finished successfully"

