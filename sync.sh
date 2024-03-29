#!/usr/bin/env bash
base_dir=$(dirname "$0")
cvelist_home=$HOME/github/stanleyshuang/cvelist
      cd $cvelist_home
echo "cd $cvelist_home"

### 1. Ensure your fork is up to date, especially prior to creating a new 
###    branch (every time you create a new branch). The command for this are:
echo "git fetch upstream"
      git fetch upstream
echo "git checkout master"
      git checkout master
echo "git merge upstream/master"
      git merge upstream/master
echo "git pull"
      git pull

### 2. Optionally push any updates from the upstream CVEProject/cvelist 
###    master back to you fork on Github.com:
# git push
