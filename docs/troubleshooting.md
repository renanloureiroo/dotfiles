# Solução de problemas

## Atualizar plugins

```bash
antidote update
rm -f ~/.zsh_plugins.zsh ~/.zsh_plugins.zsh.zwc
exec zsh
```

## Erro "no such file or directory" em `~/.zsh_plugins.zsh`

Acontece quando o cache do antidote (`~/Library/Caches/antidote`) é apagado,
por exemplo por limpeza manual de caches ou por apps de limpeza. O `.zshrc`
detecta a ausência do cache e regenera o bundle ao abrir um novo terminal,
clonando os plugins novamente. Se ainda assim falhar:

```bash
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

