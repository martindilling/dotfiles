# oh-my-zsh configuration
ZSH_THEME="nils"
COMPLETION_WAITING_DOTS="true"

# ls dir colors
eval $(dircolors ~/.dir_colors)

# plugins
plugins=(
    colored-man-pages
    git
    ruby
    zsh-syntax-highlighting
    history-substring-search
    composer
    vagrant
    homestead
    docker
    laravel
    colorize
    command-not-found
)

# syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=red,standout')

# oh-my-zsh
source $ZSH/oh-my-zsh.sh
