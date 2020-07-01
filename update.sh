#!/usr/bin/env bash
base_dir=$(dirname "$0")
cvelist_home=$HOME/github/stanleyshuang/cvelist
cd $cvelist_home

YOUR_BRANCH=$1 # ex. QSA-20-03 or Jun-2020
if [[ $YOUR_BRANCH == "" ]]; then
  echo "Give YOUR_BRANCH (QSA-20-03 or Jun-2020)"
  exit 1
fi

### 3. Create a new branch, separate from master, for each submission. We 
###    encourage you to include in that multiple, related updates whenever 
###    possible. For example, if you publish monthly advisories, you might name
###    your branch Nov-2017 and use that to send us assignment information for 
###    all the CVE ids you assigned in that month. If instead you publish 
###    advisories only as needed, you might name your branch using the 
###    advisory id (eg, SA-2017-11-03) and include in that assignment 
###    information for the CVE ids you assigned for only this one advisory. If 
###    you are working on multiple branches make sure you explicitly branch 
###    against master otherwise future branches may include work from other 
###    local branches:

git branch $YOUR_BRANCH master
git checkout $YOUR_BRANCH

### 4. Commit your changes (eg, git commit -av) and, if necessary, push your 
###    branch from your local copy of your repo to Github.com (eg, git push 
###    origin $YOUR_BRANCH).

git commit -av
git push origin $YOUR_BRANCH

### 5. Create a pull request to merge the changes in your new branch into 
###    CVEProject/cvelist master. You can do this by browsing to 
###    https://github.com/$YOU/cvelist/pull/new/master and then filling in the 
###    form. There are several fields that you need to worry about :
###       base fork is the upstream repo in which you want your updates merged - CVEProject/cvelist
###       base is the branch in the upstream repo in which the changes should be placed - master
###       head fork is your repo from which the updates should be taken; eg, $YOU/cvelist
###       compare is the branch in your repo where the changes are; eg, $YOUR_BRANCH
###    If you created your pull request using the URL above, make sure that 
###    Github reports that the branches can be merged. If not, say because you 
###    forgot to ensure your fork was synched with the upstream master, make 
###    additional commits in your branch to resolve the merge conflicts.

echo "go to https://github.com/stanleyshuang/cvelist/pull/new/master"