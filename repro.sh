#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
git reset --hard HEAD
GEM_HOME=gems bundle install
