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

## Ícones quebrados no prompt

Quadrados ou `?` no prompt e no `eza` indicam que o terminal não está usando a Nerd Font. Veja [Fonte do terminal](terminal-font.md).

## Diagnóstico

```bash
~/.local/share/chezmoi/scripts/doctor
~/.local/share/chezmoi/scripts/benchmark-shell
```

## Reverter

Os arquivos anteriores ficam em `~/.local/state/dotfiles-backup/<data-hora>/`.

