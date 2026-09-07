return {
  "nvim-treesitter/nvim-treesitter",

  dependencies = {
    "neovim-treesitter/treesitter-parser-registry",
  },

  build = ":TSUpdate",
  lazy = false,

  config = function()
    local treesitter = require("nvim-treesitter")

    treesitter.setup({})

    -- Filetypes that should not use Treesitter.
    local ignored_filetypes = {
      oil = true,
      ["blink-cmp-menu"] = true,
      mason = true,
      lazy = true,
      help = true,
    }

    vim.api.nvim_create_autocmd("FileType", {
      callback = function(event)
        local buf = event.buf
        local ft = vim.bo[buf].filetype

        -- Skip unwanted filetypes.
        if ignored_filetypes[ft] then
          return
        end

        local lang = vim.treesitter.language.get_lang(ft)

        if not lang then
          return
        end

        local function start()
          if not vim.api.nvim_buf_is_valid(buf) then
            return
          end

          pcall(vim.treesitter.start, buf, lang)

          vim.bo[buf].indentexpr =
            "v:lua.require'nvim-treesitter'.indentexpr()"
        end

        -- Install the parser if necessary.
        if #vim.api.nvim_get_runtime_file(
          "parser/" .. lang .. ".*",
          false
        ) == 0 then
          treesitter.install({ lang }):await(start)
        else
          start()
        end
      end,
    })
  end,
}
