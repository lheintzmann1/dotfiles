# History & options
setopt HIST_IGNORE_DUPS HIST_IGNORE_SPACE SHARE_HISTORY EXTENDED_HISTORY
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

autoload -Uz compinit && compinit

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(zoxide init zsh --cmd cd)"
eval "$(starship init zsh)"

[ -f "$HOME/.bash_aliases" ] && source "$HOME/.bash_aliases"

# Add dx to PATH
export PATH="$HOME/.dx/bin:$PATH"

# bun completions
[ -s "/home/mrrobot/.bun/_bun" ] && source "/home/mrrobot/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
