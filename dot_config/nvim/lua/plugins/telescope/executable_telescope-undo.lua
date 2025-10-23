return {
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
            --use_delta = true,
            side_by_side = true,
          },
        },
      })
      require("telescope").load_extension("undo")
      vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
    end,
  }
}