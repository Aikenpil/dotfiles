return {
  "XXiaoA/atone.nvim",
  cmd = "Atone",
  opts = {
    layout = {
        ---@type "left"|"right"
        direction = "left",
        ---@type "adaptive"|integer|number
        --- adaptive: exact the width of tree graph
        --- if number given is a float less than 1, the width is set to `vim.o.columns * that number`
        width = 0.25,
    },
    ui = {
        -- refer to `:h 'winborder'`
        border = "single",
        -- compact graph style
        compact = true,
    },
    auto_attach = {
        enabled = true,
        excluded_ft = { "oil" },
    },
    diff_cur_node = {
        enabled = true,
        ---@type number float less than 1
        --- The diff window's height is set to a specified percentage of the original (namely tree graph) window's height.
        split_percent = 0.3,
    },
  },
  keys = {
    { "<leader>u", "<cmd>Atone toggle<cr>", desc = "Undo tree toggle" },
  },
}