#!/bin/sh

echo DOING travis-push.sh

git checkout -B travistmp

git config --global user.email "${GH_USER_EMAIL}"
git config --global user.name "${GH_USER_NAME}"

git add example.html
git commit -m "committed at $(date)" example.html

git push --force "https://${GH_TOKEN}@${GH_REF}" travistmp:gh-pages > /dev/null 2>&1

git checkout master
git branch -d travistmp
git push origin :travistmp

