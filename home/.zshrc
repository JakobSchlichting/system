source "$HOME/.config/zsh/alias.zsh"
source "$HOME/.config/zsh/history.zsh"
source "$HOME/.config/zsh/opts.zsh"
source "$HOME/.config/zsh/env.zsh"
source "$HOME/.config/zsh/completion.zsh"

eval "$(starship init zsh)"

fastfetch

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/js/.lmstudio/bin"
# End of LM Studio CLI section

