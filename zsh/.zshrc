source ~/.zsh/alias.zsh
source ~/.zsh/history.zsh
source ~/.zsh/opts.zsh
source ~/.zsh/env.zsh
source ~/.zsh/completion.zsh

eval "$(starship init zsh)"
neofetch

[ -f "/Users/jakobschlichting/.ghcup/env" ] && source "/Users/jakobschlichting/.ghcup/env" # ghcup-env