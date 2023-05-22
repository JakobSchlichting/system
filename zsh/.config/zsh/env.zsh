#!/bin/zsh
# TODO: add conditional exports

# Load rust toolchain and cargo applications
export CARGO_HOME="$HOME/.cargo"
source ~/.cargo/env

# Load Haskell toolchain
[ -f "~/.ghcup/env" ] && source "~/.ghcup/env" # ghcup-env

# NodeJS toolchain
eval "$(fnm env --use-on-cd)"

# tmuxifier shell binding
bindkey -s ^f "tmuxifier\n"

# add custom script to path
export PATH="$PATH:$HOME/.local/bin"

# Golang
export PATH="$PATH:$HOME/tools/go/bin"

# Dotnet tooling
export PATH="$PATH:$HOME/.dotnet/tools"
