if [[ -z "$TMUX" ]] && command -v tmux >/dev/null 2>&1; then
  if tmux has-session 2>/dev/null; then
    tmux attach
  else
    tmux new -s desktop
  fi
fi
source "$HOME/.config/zsh/alias.zsh"
source "$HOME/.config/zsh/attack_tools.zsh"
source "$HOME/.config/zsh/history.zsh"
source "$HOME/.config/zsh/opts.zsh"
source "$HOME/.config/zsh/env.zsh"
source "$HOME/.config/zsh/completion.zsh"
source "$HOME/.config/zsh/functions.zsh"

eval "$(starship init zsh)"

fastfetch

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/js/.lmstudio/bin"
# End of LM Studio CLI section
