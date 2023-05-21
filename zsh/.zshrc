# initialise tmux
[ -f "/Users/jakobschlichting/tools/system/scripts/tmux-init" ] && /Users/jakobschlichting/tools/system/scripts/tmux-init

source ~/.config/zsh/alias.zsh
source ~/.config/zsh/history.zsh
source ~/.config/zsh/opts.zsh
source ~/.config/zsh/env.zsh
source ~/.config/zsh/completion.zsh

eval "$(starship init zsh)"
[ -f "/Users/jakobschlichting/.ghcup/env" ] && source "/Users/jakobschlichting/.ghcup/env" # ghcup-env

bindkey -s ^f "tmuxifier\n"
neofetch
