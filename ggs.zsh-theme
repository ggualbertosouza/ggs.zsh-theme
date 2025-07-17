# ~/.oh-my-zsh/custom/themes/rocket.zsh-theme

# Configurações básicas
NEWLINE=$'\n'
SEPARATOR="%F{240}│%f"  # Separador em cinza

# Função para o prompt git (melhorada)
function git_prompt_info() {
  local ref
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "%F{196} ${ref#refs/heads/}%f"  # Ícone git em vermelho mais vivo
  fi
}

# Configuração do prompt principal
PROMPT='%F{45}🚀%f '  # Foguete em azul claro
PROMPT+='%F{82}%n@%m%f ${SEPARATOR} '  # user@host em verde mais suave
PROMPT+='%F{39}  %~%f ${SEPARATOR} '  # Path com ícone de pasta () e azul mais claro
PROMPT+='$(git_prompt_info)'  # Info git
PROMPT+='${NEWLINE}'  # Nova linha
PROMPT+='%F{244}➜%f '  # Seta final em cinza mais claro

# Opcional: Mostrar o tempo de execução do último comando
RPROMPT='%F{242}%*%f'  # Hora atual no canto direito
