# vi alias
if command -v nvim &> /dev/null
then
    alias vi='nvim'
    alias vim='nvim'
elif command -v vim &> /dev/null
then
    alias vi='vim'
fi

# clear terminal
if command -v fastfetch &> /dev/null
then
    alias clear='clear && fastfetch'
    alias cls='clear && fastfetch'
else
    alias cls='clear'
fi

# python
alias python='python3'

# working with directory
if command -v eza  &> /dev/null
then
    alias ls='eza'
    alias ll='eza -la'
    alias dir='eza' # for the windows people and still need to drop thew bad habits
fi

if command -v bat &> /dev/null
then
    alias cat='bat'
fi
