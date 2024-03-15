# terminal coloring
export CLICOLOR=1
export LSCOLORS=dxFxCxDxBxegedabagacad

# local git_branch='$(git_prompt_info)%{$reset_color%}$(git_remote_status)'
# ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
# ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="%{$fg[cyan]%}(" # yellow
# ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX="%{$fg[cyan]%})%{$reset_color%}"

local git_branch='$(git_prompt_info)'

PROMPT="%{$fg[green]%}╭─%n@%m%{$fg[yellow]%}: %~ %{$reset_color%}${git_branch}
%{$fg[green]%}╰─\$ %{$fg[white]%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[magenta]%}("
# ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[magenta]%})"

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔"

ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=" +"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR=%{$fg[green]%}

ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" -"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR=%{$fg[red]%}

