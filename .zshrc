# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/marcsteinert/.zsh/completions:"* ]]; then export FPATH="/Users/marcsteinert/.zsh/completions:$FPATH"; fi
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Lists unpushed local git commits
alias git.unpushed="git log --branches --not --remotes"

# Path to your oh-my-zsh installation.
export ZSH="/Users/marcsteinert/.oh-my-zsh"

ZSH_THEME="afowler"

# Interval for updating zsh
export UPDATE_ZSH_DAYS=13

source $ZSH/oh-my-zsh.sh

# Displays a mac os notification
function notify {
    s='display notification "'$1'"'
    osascript -e "$s"
}

# icloud drive
alias icloud="~/Library/Mobile\ Documents/com~apple~CloudDocs/"

# Homebrew PHP installation
eval "$(homebrew/bin/brew shellenv)"
export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH="/usr/local/opt/node@16/bin:$PATH"
#export PATH="/usr/local/opt/php@8.0/bin:$PATH"
#export PATH="/usr/local/opt/php@8.0/sbin:$PATH"
export PATH="$(pyenv root)/shims:${PATH}"
export PATH="$HOME/.docker/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"

command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# bun completions
[ -s "/Users/marcsteinert/.bun/_bun" ] && source "/Users/marcsteinert/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
. "/Users/marcsteinert/.deno/env"
# Initialize zsh completions (added by deno install script)
autoload -Uz compinit
compinit

# Do not share shell history between terminals
setopt no_share_history
unsetopt share_history
