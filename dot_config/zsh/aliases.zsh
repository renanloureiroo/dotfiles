alias zshconfig='${EDITOR:-vi} ~/.zshrc'
alias reload='exec zsh'

if (( $+commands[eza] )); then
  alias ls='eza --icons=auto --group-directories-first'
  alias ll='eza -lah --icons=auto --group-directories-first --git'
  alias tree='eza --tree --icons=auto'
else
  alias ll='ls -lah'
fi

(( $+commands[bat] )) && alias cat='bat --paging=never'

