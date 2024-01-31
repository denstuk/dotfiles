export PATH=/usr/local/share/npm/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

ZSH_THEME="robbyrussell"

plugins=(
        git
        zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/chruby.sh

alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

eval "$(starship init zsh)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# bun completions
[ -s "/Users/denstuk/.bun/_bun" ] && source "/Users/denstuk/.bun/_bun"
