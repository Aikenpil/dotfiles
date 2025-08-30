return {

  --auto-save
  {
    "https://git.sr.ht/~nedia/auto-save.nvim",
    event = { "BufReadPre" },
    opts = {
      events = { "InsertLeave", "BufLeave" },
      silent = false,
      exclude_ft = { "neo-tree" },
    },
  },

  --highlight-undo
  {
    'tzachar/highlight-undo.nvim',
    opts = {
        hlgroup = "HighlightUndo",
        duration = 300,
        pattern = {"*"},
        ignored_filetypes = { "neo-tree", "fugitive", "TelescopePrompt", "mason", "lazy" },
        -- ignore_cb is in comma as there is a default implementation. Setting
        -- to nil will mean no default os called.
        -- ignore_cb = nil,
    },
  },

  --undotree
  {
    "jiaoshijie/undotree",
    dependencies = "nvim-lua/plenary.nvim",
    config = true,
    keys = { -- load the plugin only when using it's keybinding:
      { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
    }
  },

  --live-rename
  {
    "saecki/live-rename.nvim",
    event = "LspAttach",
    config = true
  },

  --nvim-spider
  {
    "chrisgrieser/nvim-spider",
    config = true,
    keys = {
      { "w", "<cmd>lua require('spider').motion('w')<CR>", mode = { "n", "o", "x" } },
      { "e", "<cmd>lua require('spider').motion('e')<CR>", mode = { "n", "o", "x" } },
      { "b", "<cmd>lua require('spider').motion('b')<CR>", mode = { "n", "o", "x" } },
    }
  },

  --twilight
  {
    "folke/twilight.nvim",
    config = true,
    opts = {},
    keys = {
      {
        "<leader>tw",
        "<cmd>Twilight<cr>",
        desc = "Toggle Twilight",
      },
    },
  },
}
