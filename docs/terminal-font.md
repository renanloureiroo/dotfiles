# Fonte do terminal

O prompt do Powerlevel10k (`POWERLEVEL9K_MODE=nerdfont-complete`) e os ícones do `eza` usam símbolos de uma **Nerd Font**. Sem ela, aparecem quadrados, interrogações ou caracteres desalinhados no lugar dos ícones.

O `Brewfile` instala a fonte automaticamente pelo cask `font-meslo-lg-nerd-font`, mas **cada emulador de terminal precisa ser configurado manualmente** para usá-la. Essa escolha fica nas preferências do aplicativo e não é gerenciada pelo Chezmoi.

## Nome da fonte

Selecione a família **`MesloLGS Nerd Font`** (ou `MesloLGS Nerd Font Mono`, se o terminal mostrar apenas fontes monoespaçadas).

> Os tutoriais do Powerlevel10k costumam citar `MesloLGS NF`, que é uma versão da mesma fonte distribuída pelo autor do p10k. Este repositório instala a versão oficial do projeto Nerd Fonts, com nome `MesloLGS Nerd Font`. Ambas funcionam, mas apenas a segunda é instalada pelo `Brewfile`.

## Instalação manual

Caso o bootstrap não tenha sido executado:

```bash
brew install --cask font-meslo-lg-nerd-font
```

Confirme que a fonte foi instalada:

```bash
ls ~/Library/Fonts | grep -i meslo
```

## Configuração por terminal

Use tamanho entre 12 e 14 pt. Feche e reabra a janela após alterar a fonte.

### Terminal.app

1. **Terminal → Ajustes… → Perfis**.
2. Selecione o perfil padrão e abra a aba **Texto**.
3. Em **Fonte**, clique em **Alterar…** e escolha `MesloLGS Nerd Font`.

### iTerm2

1. **iTerm2 → Settings… → Profiles → Text**.
2. Em **Font**, escolha `MesloLGS Nerd Font`.
3. Se **Use a different font for non-ASCII text** estiver marcado, selecione `MesloLGS Nerd Font` também em **Non-ASCII Font**, ou desmarque a opção.

### Warp

1. **Warp → Settings → Appearance**.
2. Em **Text → Terminal font**, escolha `MesloLGS Nerd Font`.

### Ghostty

Em `~/.config/ghostty/config`:

```text
font-family = "MesloLGS Nerd Font"
```

### VS Code e Cursor (terminal integrado)

Em `settings.json`:

```json
"terminal.integrated.fontFamily": "'MesloLGS Nerd Font'"
```

## Validação

Em um novo terminal, execute:

```bash
print '\ue0a0 \uf07c \uf09b \uf1d3'
```

Devem aparecer quatro ícones (branch, pasta, GitHub e Git). Se surgirem quadrados ou `?`, a fonte não está ativa naquele terminal.

Também é possível conferir com:

```bash
eza --icons ~
```

## Problemas comuns

- **Ícones quebrados só em um aplicativo:** a fonte é configurada por terminal; repita os passos acima nele.
- **Fonte não aparece na lista:** reinicie o terminal após a instalação. Se continuar ausente, reinstale com `brew reinstall --cask font-meslo-lg-nerd-font`.
- **Ícones cortados ou sobrepostos:** use `MesloLGS Nerd Font Mono` ou ajuste o espaçamento entre caracteres para 1.0.
- **Acesso remoto via SSH:** a fonte é renderizada pelo terminal local; instale e configure a Nerd Font na máquina de onde você se conecta.
