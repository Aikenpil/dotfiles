#disable fish greeting
set -U fish_greeting

#set nvim as default editor
if test -z "$NVIM"
    set -gx EDITOR nvim
end
