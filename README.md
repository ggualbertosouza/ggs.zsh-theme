# ggs.zsh-theme

Configurações pessoal para o shell "ZSH" com tema customizado para o **Oh My Zsh**.

---

## 🔌 Plugins recomendados

- `git`
- `zsh-autosuggestions`
- `zsh-syntax-highlighting`

---

## 🖼️ Pre visualização do prompt

```bash
🚀 user@host │   ~/seu/diretorio │  nome-da-branch │
➜
```

---

## 🎯 Pré-requisitos

- [Zsh](https://www.zsh.org/)
- [Oh My Zsh](https://ohmyz.sh/)
- [Nerd Font](https://www.nerdfonts.com/) (para ícones como 🚀, ,  etc.)


## Como usar

### 1. Clonar este repositório ou copiar o tema

Coloque o arquivo ggs.zsh-theme em:
```bash
~/.oh-my-zsh/custom/themes/ggs.zsh-theme
```
### 2. Ativar o tema

No seu arquivo ~/.zshrc, defina o tema:
```bash
ZSH_THEME="ggs"
```

### 3. Ativar plugins

Ainda no .zshrc, configure os plugins recomendados:
```bash
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
```

### 4. Recarregar o terminal
```bash
source ~/.zshrc
```
---
