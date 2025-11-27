local o = vim.o

o.number = true  -- Show absolute line numbers
o.relativenumber = true  -- Relative line numbers (e.g., for easier movement with `j`/`k`)
o.tabstop = 2  -- Number of spaces a tab counts for
o.shiftwidth = 2  -- Number of spaces to use for each indentation level
o.expandtab = true  -- Converts tabs to spaces
o.hlsearch = true  -- Highlight matches of search
o.incsearch = true  -- Show search matches as you type
o.ignorecase = true  -- Case insensitive search
o.smartcase = true  -- Enable smart case sensitivity in search
o.mouse = "a"  -- Enable mouse support in all modes
o.signcolumn = "yes"  -- Always show the sign column
o.autoread = true  -- Automatically reload file when changes are detected
o.autowrite = true  -- Automatically save buffers when switching windows
o.cursorline = false -- Disable the highlight in current line
o.clipboard = "unnamedplus"  -- Use the system clipboard
o.completeopt = "menuone,noselect"  -- Completion options for better popup behavior
o.swapfile = false  -- Disable the swap file (useful when working with version control)
o.undofile = true  -- Enable undo files for persistent undo history
o.undodir = vim.fn.stdpath("data") .. "/undo"  -- Set undo directory
o.undolevels = 1000  -- Increase the number of undo levels to 1000
o.undoreload = 10000  -- Maximum lines to keep in undo history for large files
o.lazyredraw = true  -- Redraw only when necessary to improve performance
o.textwidth = 80  -- Wrap text at 80 characters
o.inccommand = "split"  -- Show incremental results in a preview split
o.splitbelow = true  -- Open horizontal splits below the current window
o.splitright = true  -- Open vertical splits to the right of the current window
o.numberwidth = 4  -- Show line numbers in a 4-character wide column
o.termguicolors = true  -- Enable true color support in the terminal
o.showmatch = true  -- Enable show matching parenthesis
o.shell = "zsh"

if vim.fn.has('wsl') == 1 then
  vim.g.clipboard = {
    name = 'WslClipboard',
    copy = {
      ['+'] = 'clip.exe',
      ['*'] = 'clip.exe',
    },
    paste = {
      ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
      ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    },
  }
--else
  --g.clipboard = "xclip"
end

o.background = "dark"
vim.cmd("colorscheme modus")
