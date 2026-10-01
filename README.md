# Dotfiles do Renan

Configuração rápida e reproduzível de Zsh para macOS, gerenciada por [Chezmoi](https://www.chezmoi.io/) e [Antidote](https://antidote.sh/).

## Recursos

- Powerlevel10k com instant prompt.
- Plugins selecionados do Oh My Zsh sem carregar o framework inteiro.
- Autosuggestions, syntax highlighting, completions e busca de histórico.
- `fzf`, `zoxide`, `eza`, `bat` e `atuin`.
- NVM com carregamento sob demanda.
- Cache diário do `compinit`.
- Segredos e configurações específicas de máquina fora do Git.

## Instalação em um Mac novo

Como este repositório é privado, autentique o GitHub CLI e depois execute:

```bash
gh auth login
gh repo clone renanloureiroo/dotfiles ~/.local/share/chezmoi
~/.local/share/chezmoi/bootstrap.sh
```

## Uso diário

Edite os arquivos no diretório do projeto e aplique:

```bash
chezmoi cd
chezmoi diff
chezmoi apply
```

Atualize dependências e plugins:

```bash
brew bundle --file ~/.local/share/chezmoi/Brewfile
antidote update
```

## Configuração local e segredos

- Use `~/.config/zsh/local.zsh` para caminhos específicos da máquina.
- Use `~/.zsh_secrets` com permissão `600` para tokens.
- Nunca copie tokens para arquivos gerenciados pelo Chezmoi.

Consulte [instalação](docs/installation.md), [plugins](docs/plugins.md) e [solução de problemas](docs/troubleshooting.md).
