#disable fish greeting
set -U fish_greeting

#ensure install fisher
if not functions -q fisher
  curl -sL https://git.io/fisher | source
end

#ensure install eza
if ! command -q eza
  echo "you need to install eza - https://github.com/eza-community/eza"
end

#ensure instal ripgrep
if ! command -q rg
  echo "you need to install ripgrep - https://github.com/BurntSushi/ripgrep#installation"
end

#ensure install bat
if ! command -q bat
  echo "you need to install bat - https://github.com/sharkdp/bat#installation"
end

#ensure install fzf
if ! command -q fzf
  echo "you need to install fzf - https://github.com/junegunn/fzf#installation"
end

#set nvim as default editor
if test -z "$NVIM"
    set -gx EDITOR nvim
end

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
