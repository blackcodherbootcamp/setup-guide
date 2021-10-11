#!/bin/bash

mkdir -p -v ~/Templates/git.git
git config --global init.templateDir '~/Templates/git.git'
cp -r /usr/share/git-core/templates ~/Templates/git.git
echo 'ref: refs/heads/main' > ~/Templates/git.git/HEAD