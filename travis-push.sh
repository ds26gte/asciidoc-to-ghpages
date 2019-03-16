#!/bin/sh

git checkout -B travistmp

git config --global user.email "${GH_USER_EMAIL}"
git config --global user.name "${GH_USER_NAME}"

git add *.css *.html *.pdf

git commit -m "committed at $(date)"

git push --force "https://${GH_TOKEN}@${GH_REF}" travistmp:gh-pages > /dev/null 2>&1
