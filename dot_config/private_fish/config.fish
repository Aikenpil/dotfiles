#disable fish greeting
set -U fish_greeting

#set nvim as default editor
if test -z "$NVIM"
    set -gx EDITOR nvim
end

alias grep 'rg -S --no-heading --line-number'
alias ls 'eza -algh'
alias find 'fd -H -E ".git" -E "node_modules" -L'
alias cat 'bat --style=numbers --paging=never'
zoxide init --cmd cd fish | source
