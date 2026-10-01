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

# Atalhos pessoais.
alias connectLab='cloudflared access ssh --hostname ssh.renanloureiro.me --listener 127.0.0.1:2222'
alias claudin='claude --dangerously-skip-permissions'
alias codezao='codex --dangerously-bypass-approvals-and-sandbox'
alias burrao='agy --dangerously-skip-permissions'
alias codex-local='codex --oss --local-provider lmstudio -m qwen/qwen2.5-coder-14b --yolo'
