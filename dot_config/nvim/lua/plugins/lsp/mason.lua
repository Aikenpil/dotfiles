return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  lazy = false,
  dependencies = {
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "jay-babu/mason-nvim-dap.nvim",
    "rcarriga/nvim-dap-ui",
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
    "zapling/mason-lock.nvim",
    "folke/lazydev.nvim",
  },
  config = function()

    require("mason").setup({})
    require("mason-tool-installer").setup({
      -- a list of all tools you want to ensure are installed upon start
      ensure_installed = {
        -- you can pin a tool to a particular version
        -- { "golangci-lint", version = "v1.47.0" },
        -- you can turn off/on auto_update per tool
        -- { "bashls", auto_update = true },

        "clangd",
        "serve-d",
        "zls",
        "codelldb",
        "cmakelang",
        "rust-analyzer"
          
	  	},
      auto_update = true, -- Default: false
      run_on_start = true, -- Default: true
      start_delay = 1000, -- 1 second delay ( Default: 0 )
      debounce_hours = 12, -- at least 12 hour between attempts to install/update
      integrations = {
        ['mason-lspconfig'] = true,
        ['mason-nvim-dap'] = true,
      },
    })

    require("mason-lock").setup({
      lockfile_path = vim.fn.stdpath("config") .. "/mason-lock.json", -- (default)
    })

    require("lazydev").setup({
      library = vim.api.nvim_get_runtime_file("", true),
    })

    require("mason-lspconfig").setup({
      automatic_installation = true,
      automatic_enable = true,
    })

    require("mason-nvim-dap").setup({
      ensure_installed = {},
      automatic_installation = true,
      handlers = {},
    })

    require("dapui").setup()
  end,
}
