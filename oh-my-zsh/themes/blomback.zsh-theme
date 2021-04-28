LCHAR_WIDTH=%1G
LCHAR='›'

PROMPT='%{$fg[yellow]%}%c %{$fg[white]%}%{$LCHAR$LCHAR_WIDTH%} %{$reset_color%}'
RPROMPT='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*"
