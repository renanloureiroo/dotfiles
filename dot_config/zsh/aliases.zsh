alias zshconfig='${EDITOR:-vi} ~/.zshrc'
alias reload='exec zsh'

if (( $+commands[eza] )); then
  alias ls='eza --group-directories-first'
  alias ll='eza -lah --group-directories-first --git'
  alias tree='eza --tree'
else
  alias ll='ls -lah'
fi

(( $+commands[bat] )) && alias cat='bat --paging=never'

