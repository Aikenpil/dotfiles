local map = vim.keymap.set
local aucmd = vim.api.nvim_create_autocmd
local opts = { noremap = true, silent = true }

-- Telescope: keymaps
map("n", "<A-/>", "<cmd>Telescope keymaps<CR>", { desc = "see all keymaps" })

-- Oil
map('n', "<leader>e", function() require("oil").open() end, { noremap = true, silent = true, desc = "Oil toggle" })

-- Save Quit eXit
map("n", "<leader>s", ":w<CR>:e<CR>", { noremap = true, silent = true, desc = "Save and Reload" })
map("x", "<leader>s", "<esc> :w<CR>:e<CR>", { noremap = true, silent = true, desc = "Save and Reload" })
map("i", "<leader>s", "<esc> :w<CR>:e<CR>i", { noremap = true, silent = true, desc = "Save and Reload" })
map("n", "<leader>q", ":q!<CR>", { noremap = true, silent = true, desc = "Quit without Saving" })
map("x", "<leader>q", "<esc> :q!<CR>", { noremap = true, silent = true, desc = "Quit without Saving" })
map("i", "<leader>q", "<esc> :q!<CR>", { noremap = true, silent = true, desc = "Quit without Saving" })
map("n", "<leader>x", ":x<CR>", { noremap = true, silent = true, desc = "Save and Quit" })
map("x", "<leader>x", "<esc> :x<CR>", { noremap = true, silent = true, desc = "Save and Quit" })
map("i", "<leader>x", "<esc> :x<CR>", { noremap = true, silent = true, desc = "Save and Quit" })

-- Telescope:
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<leader>fa", "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>", { desc = "telescope find all files" })
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })

-- Scroll with Mouse
map("", "<ScrollWheelUp>", "<C-Y>", { noremap = true, silent = true, desc = "Scroll Up" })
map("i", "<ScrollWheelUp>", "<Esc><C-Y>", { noremap = true, silent = true, desc = "Scroll Up" })
map("", "<ScrollWheelDown>", "<C-E>", { noremap = true, silent = true, desc = "Scroll Down" })
map("i", "<ScrollWheelDown>", "<Esc><C-E>", { noremap = true, silent = true, desc = "Scroll Down" })

-- window management
map("n", "<leader>sv", "<C-w>v", {desc="Split window vertically"})
map("n", "<leader>sh", "<C-w>s", {desc="Split window horizontally"})
map("n", "<leader>se", "<C-w>=", {desc="Make splits equal size"})
map("n", "<leader>sx", "<cmd>close<CR>", {desc="Close current split"})

-- Move to Previous and Next Buffer
map("n", "<leader>h", ":bprev<cr>", { noremap = true, silent = true, desc = "Next Buffer" })
map("x", "<leader>h", "<esc> :bprev<cr>", { noremap = true, silent = true, desc = "Next Buffer" })
map("i", "<leader>h", "<esc> :bprev<cr>", { noremap = true, silent = true, desc = "Next Buffer" })
map("n", "<leader>l", ":bnext<cr>", { noremap = true, silent = true, desc = "Previous Buffer" })
map("x", "<leader>l", "<esc> :bnext<cr>", { noremap = true, silent = true, desc = "Previous Buffer" })
map("i", "<leader>l", "<esc> :bnext<cr>", { noremap = true, silent = true, desc = "Previous Buffer" })
-- Close Current Buffer
map("n", "<leader>bd", ":bd<CR>", { noremap = true, silent = true, desc = "Close current buffer" })
map("x", "<leader>bd", "<esc> :bd<CR>", { noremap = true, silent = true, desc = "Close current buffer" })
map("i", "<leader>bd", "<esc> :bd<CR>", { noremap = true, silent = true, desc = "Close current buffer" })

-- Bufferin:
map('n', '<leader>b', '<cmd>Bufferin<cr>', { desc = 'Toggle Bufferin' })

-- Smart-split: resizing splits
map('n', '<A-h>', require('smart-splits').resize_left, { desc = "Resize split left" })
map('n', '<A-j>', require('smart-splits').resize_down, { desc = "Resize split down" })
map('n', '<A-k>', require('smart-splits').resize_up, { desc = "Resize split up" })
map('n', '<A-l>', require('smart-splits').resize_right, { desc = "Resize split right" })
-- Smart-split: moving between splits
map('n', '<C-h>', require('smart-splits').move_cursor_left, { desc = "Move cursor to left split" })
map('n', '<C-j>', require('smart-splits').move_cursor_down, { desc = "Move cursor to split below" })
map('n', '<C-k>', require('smart-splits').move_cursor_up, { desc = "Move cursor to split above" })
map('n', '<C-l>', require('smart-splits').move_cursor_right, { desc = "Move cursor to right split" })
map('n', '<C-\\>', require('smart-splits').move_cursor_previous, { desc = "Move cursor to previous split" })


-- Move: Normal-mode commands
map("n", "lj", ":MoveLine(1)<CR>", { noremap = true, silent = true, desc = "Move current line down" })
map("n", "lk", ":MoveLine(-1)<CR>", { noremap = true, silent = true, desc = "Move current line up" })
map("n", "<leader>wf", ":MoveWord(1)<CR>", { noremap = true, silent = true, desc = "Move current word forward" })
map("n", "<leader>wb", ":MoveWord(-1)<CR>", { noremap = true, silent = true, desc = "Move current word backward" })
map("n", "<Shift>|", function() require("multiple-cursors").align() end, { noremap = true, silent = true, desc = "Align with multiple cursors" })
-- Move: Visual-mode commands
map("x", "<A-j>", ":MoveBlock(1)<CR>", { noremap = true, silent = true, desc = "Move selected block down" })
map("x", "<A-k>", ":MoveBlock(-1)<CR>", { noremap = true, silent = true, desc = "Move selected block up" })
map("x", "<A-h>", ":MoveHBlock(-1)<CR>", { noremap = true, silent = true, desc = "Move selected block left" })
map("x", "<A-l>", ":MoveHBlock(1)<CR>", { noremap = true, silent = true, desc = "Move selected block right" })


-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- ToggleTerm:
map("n", "<leader>d", ':term<CR>', { noremap = true, silent = true, desc = "open terminal" })
map("i", "<leader>d", ':term<CR>i', { noremap = true, silent = true, desc = "Open terminal in insert mode" })
map("n", "<leader>t", ":ToggleTerm<CR>", { noremap = true, silent = true, desc = "toggle terminal" })
map("n", "<leader>tx", ":ToggleTerm close<CR>", { noremap = true, silent = true, desc = "close terminal" })

-- LSP Commands {{{
aucmd("LspAttach", {
desc = "LSP actions",
callback = function(event)
    local op = { buffer = event.buf }

    -- these will be buffer-local keybindings
    -- because they only work if you have an active language server
    -- Diagnostics with Trouble
    -- LSP bindings
    
    map("n", "gd", function() require("goto-preview").goto_preview_definition({}) end, op)
    map("n", "gD", function() require("goto-preview").goto_preview_declaration({}) end, op)
    map("n", "gi", function() require("goto-preview").goto_preview_implementation({}) end, op)
    map("n", "gI", function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end, op)
    map("n", "gt", function() require("goto-preview").goto_preview_type_definition({}) end, op)
    map("n", "gr", function() require("goto-preview").goto_preview_references({}) end, op)

    map("n", "[d", function()
    if vim.tbl_isempty(vim.diagnostic.get(0)) then
        require("trouble").close("diagnostics")
        vim.notify("No diagnostic errors found", vim.log.levels.INFO, { title = "Trouble" })
    else
        vim.diagnostic.goto_prev()
        require("trouble").prev({ mode = "diagnostics" })
    end
    end, op)

    map("n", "]d", function()
    if vim.tbl_isempty(vim.diagnostic.get(0)) then
        require("trouble").close("diagnostics")
        vim.notify("No diagnostic errors found", vim.log.levels.INFO, { title = "Trouble" })
    else
        vim.diagnostic.goto_next()
        require("trouble").next({ mode = "diagnostics" })
    end
    end, op)
    -- map("n", "K", function() vim.lsp.buf.hover() end, op)
    map("n", "gs", function() vim.lsp.buf.signature_help() end, op)
    map("n", "<leader>rn", function() vim.lsp.buf.rename() end, op)
    -- Format and Code Actions
    map({ "n", "x" }, "<leader>fm", function() vim.lsp.buf.format({ async = true }) end, op)
    map({ "n", "x" }, "<leader>ca", function() require("fastaction").code_action() end, op)
end,
})
--}}}

-- Debugging Commands {{{
map("n", "<leader>dt", function() require("dap").toggle_breakpoint() end, { noremap = true, silent = true, desc = "Toggle breakpoint" })
map("n", "<leader>dr", function() require("dap").repl.toggle() end, { noremap = true, silent = true, desc = "Toggle REPL" })
map("n", "<leader>di", function() require("dap").step_into() end, { noremap = true, silent = true, desc = "Step into" })
map("n", "<leader>do", function() require("dap").step_over() end, { noremap = true, silent = true, desc = "Step over" })
map("n", "<leader>ds", function() require("dap").step_out() end, { noremap = true, silent = true, desc = "Step out" })
map("n", "<leader>dd", function() require("dap").step_back() end, { noremap = true, silent = true, desc = "Step back" })
map("n", "<leader>dp", function() require("dap").pause() end, { noremap = true, silent = true, desc = "Pause debugger" })
map("n", "<leader>dc", function() require("dap").continue() end, { noremap = true, silent = true, desc = "Continue debugger" })
map("n", "<Leader>dl", function() require("dap").run_last() end, { noremap = true, silent = true, desc = "Run last debugger session" })
map("n", "<leader>du", function() require("dapui").toggle() end, { noremap = true, silent = true, desc = "Toggle DAP UI" })
map("n", "<leader>de", function() require("dapui").eval() end, { noremap = true, silent = true, desc = "Evaluate expression" })
--}}}

