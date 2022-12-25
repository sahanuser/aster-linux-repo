#!/bin/sh

rm -r aster-linux-repo*
repo-add -v --verify --sign aster-linux-repo.db.tar.gz *.pkg.tar.zst
rm -r aster-linux-repo.db
rm -r  aster-linux-repo.files
mv aster-linux-repo.db.tar.gz aster-linux-repo.db
mv aster-linux-repo.files.tar.gz aster-linux-repo.files

git add .
echo "Enter your Commit "
read input

git commit  -m "$input" 
git push --set-upstream origin master

