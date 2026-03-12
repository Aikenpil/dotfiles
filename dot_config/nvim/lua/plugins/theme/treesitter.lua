return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "c", "cpp", "rust", "zig", "cmake", "make", "llvm", "lua", "regex", "diff",
      },
      auto_install = true,
      sync_install = false,
      ignore_install = {},
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          node_decremental = "grc",
          scope_incremental = "grm",
        },
      },
    })
    vim.treesitter.language.register("bash", "zsh")
  end,
}