#disable fish greeting
set -U fish_greeting

#set nvim as default editor
if test -z "$NVIM"
    set -gx EDITOR nvim
end

# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims

#start with a clean environment
#set -e PATH
#set -e MANPATH

#dev environment configurations
function dev_config

    #add cargo to path
    if test -x ~/.cargo/bin
        fish_add_path --path --append ~/.cargo/bin
    end

    #add clang to path
    if test -x /usr/sbin/clang
        fish_add_path --path --append /usr/sbin/clang
    end
end

#user default path
function user_paths

    fish_add_path --path /usr/local/bin /bin /usr/bin /sbin /usr/sbin
    fish_add_path -- path ~/binaries ~/scripts
    set -gx MANPATH /usr/local/man /usr/local/share/man
end

#dev_config
#user_paths
