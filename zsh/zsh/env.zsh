#!/bin/zsh

# Load rust toolchain and cargo applicaations
source ~/.cargo/env

# Load Haskell toolchain
[ -f "/home/jakobschlichting/.ghcup/env" ] && source "/home/jakobschlichting/.ghcup/env" # ghcup-env

# NodeJS toolchain
eval "$(fnm env --use-on-cd)"

#export PATH=$PATH:~/bin:~/Qt/6.2.4/macos/bin:~/tools/system/scripts:/usr/local/opt/libpq/bin
export GITHUB_PAT=""
