#!/bin/bash

set -ue

cd /apps/v2doc

gitbook build ./prod ./docs
