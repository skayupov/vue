#!/usr/bin/env sh

set -e

npm run build

cd dist

git add -A
git commit -m "new deploy"
git push -f git@github.com:skayupov/vue.git master:gh-pages

cd -