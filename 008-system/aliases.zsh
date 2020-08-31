# List files and dirs
alias ls="ls -Ah --color"
alias ll="ls -lAhF --color"
alias dirs="ls -lAhF --color | grep '^d'"

# Clipboard shortcuts to match macos
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# Navigate
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# List history
alias h="history"

# Use the better top
alias top="htop"

# Human readable sizes
alias df="df -h"

# Create parent directories
alias mkdir='mkdir -pv'

# Make dir and navigate to it
mkcd() {
    mkdir -p -- "$1" && cd -P -- "$1"
}
