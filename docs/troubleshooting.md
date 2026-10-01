# Solução de problemas

## Atualizar plugins

```bash
antidote update
rm -f ~/.zsh_plugins.zsh ~/.zsh_plugins.zsh.zwc
exec zsh
```

## Recriar completions

```bash
rm -f ~/.zcompdump*
exec zsh
```

## Diagnóstico

```bash
~/.local/share/chezmoi/scripts/doctor
~/.local/share/chezmoi/scripts/benchmark-shell
```

## Reverter

Os arquivos anteriores ficam em `~/.local/state/dotfiles-backup/<data-hora>/`.

