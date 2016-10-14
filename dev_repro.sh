#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

git reset --hard HEAD
git clean -fd

if [[ -f "$HOME/src/bundler/bundler/exe/bundle" ]]; then
    GEM_HOME=gems BUNDLE_DISABLE_POSTIT=1 ruby -I ~/src/bundler/bundler/lib ~/src/bundler/bundler/exe/bundle "$@";
else
    GEM_HOME=gems ruby -I ~/src/bundler/bundler/lib ~/src/bundler/bundler/bin/bundle "$@";
fi
