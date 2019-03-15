#!/bin/sh

echo DOING travis-push.sh

git config --global user.email "${GH_USER_EMAIL}"
git config --global user.name "${GH_USER_NAME}"

echo Adding example.html

git add example.html
git commit -m "committed at $(date)" example.html

echo Committed example.html

git push --force "https://${GH_TOKEN}@github.com/ds26gte/asciidoc-to-pages" master:gh-pages > /dev/null 2>&1

