#!/bin/bash
set -e

REPO="https://${GITHUB_BOT_TOKEN}@github.com/Xivid/10043.git"

git config user.name "10043-Bot"
git config user.email "bot@10043.org"

git checkout -- Gemfile.lock

git checkout gh-pages
git pull origin gh-pages

find . -maxdepth 1 ! -name '_site' ! -name '.git' ! -name '.gitignore' -exec rm -rf {} \;
mv _site/* .
rm -R _site/

git add -fA
git commit --allow-empty -m "$(git log master -1 --pretty=%B)"
git push $REPO gh-pages

echo "Deployed successfully"
