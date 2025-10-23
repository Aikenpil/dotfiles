local map = vim.keymap.set
local aucmd = vim.api.nvim_create_autocmd
local opts = { noremap = true, silent = true }

-- Save Quit eXit
map("n", "<C-s>", ":w | e | TSBufEnable highlight<cr>", { noremap = true, silent = true, desc = "Save and Reload" })
map("x", "<C-s>", "<esc> :w | e | TSBufEnable highlight<cr>", { noremap = true, silent = true, desc = "Save and Reload" })
map("i", "<C-s>", "<esc> :w | e | TSBufEnable highlight<cr>i", { noremap = true, silent = true, desc = "Save and Reload" })
map("n", "<C-q>", ":q!<cr>", { noremap = true, silent = true, desc = "Quit without Saving" })
map("x", "<C-q>", "<esc> :q!<cr>", { noremap = true, silent = true, desc = "Quit without Saving" })
map("i", "<C-q>", "<esc> :q!<cr>", { noremap = true, silent = true, desc = "Quit without Saving" })
map("n", "<C-x>", ":x<cr>", { noremap = true, silent = true, desc = "Save and Quit" })
map("x", "<C-x>", "<esc> :x<cr>", { noremap = true, silent = true, desc = "Save and Quit" })
map("i", "<C-x>", "<esc> :x<cr>", { noremap = true, silent = true, desc = "Save and Quit" })

-- telescope
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
map("", "<ScrollWheelUp>", "<C-Y>", opts)
map("i", "<ScrollWheelUp>", "<Esc><C-Y>", opts)
map("", "<ScrollWheelDown>", "<C-E>", opts)
map("i", "<ScrollWheelDown>", "<Esc><C-E>", opts)

-- window management
--map("n", "<leader>sv", "<C-w>v", {desc="Split window vertically"})
--map("n", "<leader>sh", "<C-w>s", {desc="Split window horizontally"})
--map("n", "<leader>se", "<C-w>=", {desc="Make splits equal size"})
--map("n", "<leader>sx", "<cmd>close<CR>", {desc="Close current split"})

-- Close Current Buffer
map("n", "<leader>bd", ":bd<cr>", opts)
map("x", "<leader>bd", "<esc> :bd<cr>", opts)
map("i", "<leader>bd", "<esc> :bd<cr>", opts)

-- Move to Previous and Next Buffer
map("n", "<C-h>", ":bprev<cr>", opts)
map("x", "<C-h>", "<esc> :bprev<cr>", opts)
map("i", "<C-h>", "<esc> :bprev<cr>", opts)
map("n", "<C-l>", ":bnext<cr>", opts)
map("x", "<C-l>", "<esc> :bnext<cr>", opts)
map("i", "<C-l>", "<esc> :bnext<cr>", opts)

-- Tab management
-- map("n", "<leader>to", "<cmd>tabnew<CR>", {desc="Open New Tab"})
-- map("n", "<leader>tx", "<cmd>tabclose<CR>", {desc="Close current tab"})
-- map("n", "<leader>tn", "<cmd>tabn<CR>", {desc="Go to next tab"})
-- map("n", "<leader>tp", "<cmd>tabp<CR>", {desc="Go to prev tab"})
-- map("n", "<leader>tf", "<cmd>tabnew %<CR>", {desc="Open current buffer in new tab"})

-- Move
-- map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
-- map("i", "<C-e>", "<End>", { desc = "move end of line" })
-- map("i", "<C-h>", "<Left>", { desc = "move left" })
-- map("i", "<C-l>", "<Right>", { desc = "move right" })
-- map("i", "<C-j>", "<Down>", { desc = "move down" })
-- map("i", "<C-k>", "<Up>", { desc = "move up" })

-- Switch window
-- map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
-- map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
-- map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
-- map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- Move Commands
-- Normal-mode commands
-- map("n", "lh", ":MoveHChar(-1)<CR>", opts)
map("n", "lj", ":MoveLine(1)<CR>", opts)
map("n", "lk", ":MoveLine(-1)<CR>", opts)
map("n", "<leader>wf", ":MoveWord(1)<CR>", opts)
map("n", "<leader>wb", ":MoveWord(-1)<CR>", opts)
map("n", "<Shift>|", function() require("multiple-cursors").align() end, opts)
-- Visual-mode commands
map("x", "<A-j>", ":MoveBlock(1)<CR>", opts)
map("x", "<A-k>", ":MoveBlock(-1)<CR>", opts)
map("x", "<A-h>", ":MoveHBlock(-1)<CR>", opts)
map("x", "<A-l>", ":MoveHBlock(1)<CR>", opts)
--}}}

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- Neo Tree Commands {{{
map("n", "<C-n>", ":Neotree toggle<cr>", opts)
map("n", "<C-n>s", ":Neotree git_status<cr>", opts)
-- }}}

-- nvimtree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })
map("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", {desc="Toggle file explore on current file"})
map("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", {desc="Collapse file explorer"})
map("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", {desc="Refresh file explorer"})

-- whichkey
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })

-- ToggleTerm Commands
map("n", "<leader>d", ':TermExec cmd="prd"<CR>', opts)
map("i", "<leader>d", ':TermExec cmd="prd"<CR>i', opts)
map("n", "<leader>t", ":ToggleTerm<CR>", opts)
map("n", "<leader>tx", ":ToggleTerm close<CR>", opts)

-- resizing splits
map('n', '<A-h>', require('smart-splits').resize_left)
map('n', '<A-j>', require('smart-splits').resize_down)
map('n', '<A-k>', require('smart-splits').resize_up)
map('n', '<A-l>', require('smart-splits').resize_right)
-- moving between splits
map('n', '<C-h>', require('smart-splits').move_cursor_left)
map('n', '<C-j>', require('smart-splits').move_cursor_down)
map('n', '<C-k>', require('smart-splits').move_cursor_up)
map('n', '<C-l>', require('smart-splits').move_cursor_right)
map('n', '<C-\\>', require('smart-splits').move_cursor_previous)
-- swapping buffers between windows
map('n', '<leader><leader>h', require('smart-splits').swap_buf_left)
map('n', '<leader><leader>j', require('smart-splits').swap_buf_down)
map('n', '<leader><leader>k', require('smart-splits').swap_buf_up)
map('n', '<leader><leader>l', require('smart-splits').swap_buf_right)

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
map("n", "<leader>dt", function() require("dap").toggle_breakpoint() end, opts)
map("n", "<leader>dr", function() require("dap").repl.toggle() end, opts)
map("n", "<leader>di", function() require("dap").step_into() end, opts)
map("n", "<leader>do", function() require("dap").step_over() end, opts)
map("n", "<leader>ds", function() require("dap").step_out() end, opts)
map("n", "<leader>dd", function() require("dap").step_back() end, opts)
map("n", "<leader>dp", function() require("dap").pause() end, opts)
map("n", "<leader>dc", function() require("dap").continue() end, opts)
map("n", "<Leader>dl", function() require("dap").run_last() end, opts)
map("n", "<leader>du", function() require("dapui").toggle() end, opts)
map("n", "<leader>de", function() require("dapui").eval() end, opts)
--}}}