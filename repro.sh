#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
set -vx

tar xfvz gemstash.tgz ~/.gemstash
gem install gemstash
gemstash start

echo "set up, going to try to reproduce with the latest bundler..."
gem install bundler
bundle -v
bundle install
