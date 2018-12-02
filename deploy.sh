#!/bin/bash

set -e
# set -ex

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

echo -e "--------------------------------------------------"

# Build the project.

cd /opt/code/github/public/ipatch.github.io

echo -e "--------------------------------------------------"

pwd

echo -e "--------------------------------------------------"

cd ./src/

pwd

echo -e "--------------------------------------------------"

hugo

cp -rf ./build/* ../../

echo -e "--------------------------------------------------"

echo -e "moved build files from running 'hugo'" into project root

echo -e "--------------------------------------------------"

# Commit changes.
msg="rebuilding site $(date)"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# When working with <USER>.github.io repos, the website is built from the master branch

git push origin master

echo -e "--------------------------------------------------"
echo -e " New build should be published at http://ipatch.github.io"
echo -e "--------------------------------------------------"
