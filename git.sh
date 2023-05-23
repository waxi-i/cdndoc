#!/bin/bash

set -ue

git fetch origin gitbook
git pull origin gitbook

cd /apps/v2doc

docker exec -it node gitbook build /apps/v2doc/prod/ /apps/v2doc/docs/

# git add .
git add --all
git commit -m "$(date +%FT%T)"
git push
# find ./docs -type f -name "*.html" | xargs sed -i 's#https://www.gitbook.com##g'
# find ./docs -type f -name "*.html" | xargs sed -i 's#本书使用 GitBook 发布#End#g'

# 插件 http://gitbook.zhangjikai.com/plugins.html
