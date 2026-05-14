# Dotfiles
These dotfiles are my currently used configurations for zsh, neovim, git (and soon hyprland)

## Installation
To aid the versioning my dotfiles i used **chezmoi**

```sh
chezmoi init https://github.com/Aikenpil/dotfiles.git && chezmoi apply
```

## List of features
### zsh
- **zsh-history-substring-search**: Search through Zsh history by typing a substring of the command [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
- **zsh-syntax-highlighting**: Provides syntax highlighting for the Zsh command line [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- **zsh-autopair**: Auto-complete matching pairs in the Zsh command line [zsh-autopair](https://github.com/hlissner/zsh-autopair)
- **zsh-autosuggestions**: Suggest commands as you type based on your history [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- **zsh-completions**: Add more advanced completions for a wide variety of commands [zsh-completions](https://github.com/zsh-users/zsh-completions)

### Neovim
- **bufferin**: Efficiently switch between open buffers with keybindings.
  [bufferin.nvim](https://github.com/moll/vim-buftabline)
- **autopairs**: Automatically inserts matching pairs of brackets, quotes, and other symbols.
  [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- **nvim-spider**: A fast, easy way to navigate and edit code with "spider-like" motions.
  [nvim-spider](https://github.com/chrisgrieser/nvim-spider)
- **smart-splits**: Enables intelligent window splitting for improved navigation between splits.
  [smart-splits.nvim](https://github.com/mrjones2014/smart-splits.nvim)
- **toggleterm**: Adds a floating terminal to Neovim, making it easy to open and manage terminals.
  [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- **twilight**: Dims inactive portions of the code you're editing for better focus.
  [twilight.nvim](https://github.com/folke/twilight.nvim)
- **oil**: Modern file explorer, similar to NERDTree or netrw, with a clean interface.
  [oil.nvim](https://github.com/stevearc/oil.nvim)
- **mason-tool-installer**: Manages external tooling like linters, formatters, and servers directly from Neovim.
  [mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim)
- **blink.cmp**: A completion plugin that provides intelligent text suggestions as you type.
  [blink.cmp](https://github.com/saghen/blink.cmp)
- **telescope**: A fuzzy finder for Neovim that lets you search files, buffers, and more.
  [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- **nvim-treesitter-manager**: Parser manager for treesitter.
  [nvim-treesitter-manager](https://github.com/romus204/tree-sitter-manager.nvim)
