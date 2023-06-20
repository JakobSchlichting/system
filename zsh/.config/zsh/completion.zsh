# enable completion features
autoload -Uz compinit
compinit -d $HOME/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # case insensitive tab completion

# OpenShift autocomplete, when oc exists
if [ $commands[oc] ]; then
    source <(oc completion zsh)
    compdef _oc oc
fi
