# Configurações básicas
NEWLINE=$'\n'
SEPARATOR="%F{240}│%f"  # Separador em cinza

function git_prompt_info() {
  local ref
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "%F{196} ${ref#refs/heads/}%f"
  fi
}

PROMPT='%F{45}🚀%f '
PROMPT+='%F{82}%n@%m%f ${SEPARATOR} '
PROMPT+='%F{39}  %~%f ${SEPARATOR} '
PROMPT+='$(git_prompt_info)'
PROMPT+='${NEWLINE}'
PROMPT+='%F{244}➜%f '
