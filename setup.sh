#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
set -vx

# THIS WILL DESTROY YOUR LOCAL GEMSTASH BE CAREFUL IF YOU HAVE ONE

gem install gemstash
gemstash stop || true
rm -rf ~/.gemstash
mkdir -p ~/.gemstash
tar xfvz gemstash.tgz -C ~/.gemstash
gemstash start

gem install bundler
bundle -v

echo "setup done, going to try reproducing..."
./repro.sh
