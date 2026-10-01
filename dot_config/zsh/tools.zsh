# Ferramentas modernas instaladas pelo Brewfile.
(( $+commands[zoxide] )) && eval "$(zoxide init zsh)"
(( $+commands[fzf] )) && source <(fzf --zsh)
(( $+commands[atuin] )) && eval "$(atuin init zsh --disable-up-arrow)"

