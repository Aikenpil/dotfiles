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
    "tzachar/highlight-undo.nvim",
    opts = {
      hlgroup = "HighlightUndo",
      duration = 300,
      pattern = { "*" },
      ignored_filetypes = { "neo-tree", "fugitive", "TelescopePrompt", "mason", "lazy" },
    },
  },

  --telescope-undo
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "debugloop/telescope-undo.nvim",
    },
    event = "LspAttach",
    config = function()
      require("telescope").setup({
        extensions = {
          undo = {
            use_delta = true,
            side_by_side = true,
          },
        },
      })
      require("telescope").load_extension("undo")
      vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
    end,
  },

  --live-rename
  {
    "saecki/live-rename.nvim",
    event = "LspAttach",
    config = true,
  },

  --nvim-spider
  {
    "chrisgrieser/nvim-spider",
    config = true,
    keys = {
      { "w", "<cmd>lua require('spider').motion('w')<CR>", mode = { "n", "o", "x" } },
      { "e", "<cmd>lua require('spider').motion('e')<CR>", mode = { "n", "o", "x" } },
      { "b", "<cmd>lua require('spider').motion('b')<CR>", mode = { "n", "o", "x" } },
    },
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
