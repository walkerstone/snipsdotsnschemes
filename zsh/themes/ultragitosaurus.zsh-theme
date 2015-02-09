local ret_status="%(?:%{$fg[green]%}[%*] :%{$fg[red]%}[%*] %s)"
function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '➜' && return
    echo '$'
}
PROMPT='${ret_status} %{$fg[cyan]%}%B%~%b $(prompt_git_info)
%{$fg_bold[green]%}$(prompt_char)%{$reset_color%} '
