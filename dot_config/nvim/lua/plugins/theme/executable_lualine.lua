return {
    {
        'nvim-lualine/lualine.nvim',
        event = "VimEnter",
        dependencies = { 
            'nvim-tree/nvim-web-devicons', 
            'linrongbin16/lsp-progress.nvim'
        },
        config = function()
            require('lsp-progress').setup({})
            require('lualine').setup({
                options = { theme = 'iceberg_dark' },
                extensions = { 'lazy', 'oil', 'toggleterm', 'nvim-dap-ui', 'fzf' }
            })
        end,
    },
}