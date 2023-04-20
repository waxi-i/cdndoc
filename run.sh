#!/bin/bash

set -ue

cd /apps/v2doc

gitbook build ./prod ./docs

# 插件 http://gitbook.zhangjikai.com/plugins.html
