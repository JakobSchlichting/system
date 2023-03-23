# initialise tmux
[ -f "/Users/jakobschlichting/tools/system/scripts/tmux-init" ] && /Users/jakobschlichting/tools/system/scripts/tmux-init

source ~/.zsh/alias.zsh
source ~/.zsh/history.zsh
source ~/.zsh/opts.zsh
source ~/.zsh/env.zsh
source ~/.zsh/completion.zsh

eval "$(starship init zsh)"
[ -f "/Users/jakobschlichting/.ghcup/env" ] && source "/Users/jakobschlichting/.ghcup/env" # ghcup-env

neofetch
