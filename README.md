# Dotfiles
These dotfiles are my currently used configurations for fish, neovim (lazyvim), git and a bash script to set up a fresh arch linux environment with it

## Installation
For the versioning of my dotfiles i used the dotfiles manager **chezmoi**

To replicate my configs you should first install chezmoi using your preferred package manager, then make a backup of your configurations

Note that my .gitconfig will not work for you

```sh
chezmoi init https://github.com/Aikenpil/dotfiles.git && chezmoi apply
```

## List of features
### zsh
- **zsh-history-substring-search**: [fzf.fish](https://github.com/PatrickF1/fzf.fis)
- **autopair**:  Auto-complete matching pairs in the Fish command line [autopair.fish](https://github.com/jorgebucaran/autopair.fish)
- **sponge**: Clean fish history from typos automatically [sponge.fish](https://github.com/meaningful-ooo/sponge)
- **z**:  Pure-fish z directory jumping [z.fish](https://github.com/jethrokuan/z)
- **fish-async-prompt**: Make your prompt asynchronous to improve the reactivity [fish-async-prompt.fish](https://github.com/acomagu/fish-async-prompt)

### Neovim
- **bufferin**: Efficiently switch between open buffers with keybindings.
  [bufferin.nvim](https://github.com/moll/vim-buftabline)
- **autopairs**: Automatically inserts matching pairs of brackets, quotes, and other symbols.
  [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- **fastaction**: Quickly invoke common actions with a keypress.
  [fastaction.nvim](https://github.com/rcarriga/nvim-fast-action)
- **move**: Allows you to easily move lines or selections up and down.
  [move.nvim](https://github.com/svermeulen/vim-easy-align)
- **multiple-cursors**: Supports multiple cursors for easy editing of multiple lines simultaneously.
  [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
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
- **undotree**: Visualize and manage your undo history for better code recovery.
  [undotree.nvim](https://github.com/mbbill/undotree)
- **mason**: Manages external tooling like linters, formatters, and servers directly from Neovim.
  [mason.nvim](https://github.com/williamboman/mason.nvim)
- **nvim-cmp**: A completion plugin that provides intelligent text suggestions as you type.
  [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- **goto-preview**: Previews the result of `goto` commands (like `gd` for GoToDefinition).
  [goto-preview.nvim](https://github.com/rmagatti/goto-preview)
- **telescope**: A fuzzy finder for Neovim that lets you search files, buffers, and more.
  [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- **fzf (telescope)**: Integrates `fzf` with Telescope to enhance fuzzy searching with fast performance.
  [fzf.nvim](https://github.com/ibhagwan/fzf-lua)
- **neoclip (telescope)**: Adds clipboard history to Telescope for easy pasting of previous clipboard entries.
  [neoclip.nvim](https://github.com/zyscream/neoclip.vim)
- **ui-select (telescope)**: Provides a UI for selecting items within Telescope, improving the user experience.
  [ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- **frecency (telescope)**: A Telescope extension that helps you find files based on how often you've accessed them.
  [frecency.nvim](https://github.com/nvim-telescope/telescope-frecency.nvim)
- **carbonfox**: A beautiful and easy-to-configure colorscheme for Neovim.
  [carbonfox.nvim](https://github.com/owent-utils/carbonfox)
- **dashboard**: A personalized start screen that shows recent files, sessions, and more when Neovim is opened.
  [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- **lualine**: A fast and customizable statusline for Neovim written in Lua.
  [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- **nvim-treesitter**: An essential plugin for syntax highlighting, code navigation, and more based on Treesitter.
  [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
