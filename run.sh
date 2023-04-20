#!/bin/bash

set -ue

cd /apps/v2doc

gitbook build ./prod ./docs

# find ./docs -type f -name "*.html" | xargs sed -i 's#https://gitbook.com##g'


# 插件 http://gitbook.zhangjikai.com/plugins.html
