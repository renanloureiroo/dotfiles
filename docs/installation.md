# Instalação

## Mac já autenticado no GitHub

```bash
gh repo clone renanloureiroo/dotfiles ~/.local/share/chezmoi
~/.local/share/chezmoi/bootstrap.sh
```

O bootstrap instala Homebrew quando necessário, aplica o `Brewfile`, salva os dotfiles anteriores e executa o Chezmoi.

## Fonte do terminal

O `Brewfile` instala **MesloLGS Nerd Font**, necessária para os símbolos do Powerlevel10k e os ícones do `eza`. Depois do bootstrap, selecione `MesloLGS Nerd Font` nas preferências de cada terminal utilizado; essa escolha não é feita automaticamente.

Consulte o [passo a passo por terminal](terminal-font.md) para Terminal.app, iTerm2, Warp, Ghostty e VS Code.

## Dados específicos da máquina

Copie o exemplo e ajuste caminhos que existam apenas naquele Mac:

```bash
cp ~/.config/zsh/local.example.zsh ~/.config/zsh/local.zsh
```

Crie segredos separadamente:

```bash
cp ~/.zsh_secrets.example ~/.zsh_secrets
chmod 600 ~/.zsh_secrets
```

## Validação

```bash
~/.local/share/chezmoi/scripts/doctor
~/.local/share/chezmoi/scripts/benchmark-shell
```

