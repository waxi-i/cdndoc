#!/bin/bash

set -ue

cd /apps/v2doc

gitbook build ./prod ./docs

git commit -m "$(date +%FT%T)"
git add 


# 插件 http://gitbook.zhangjikai.com/plugins.html
