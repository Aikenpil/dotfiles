-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local env = vim.env
-- local exists = vim.fn.exists
local fn = vim.fn
local g = vim.g
local git_repo = vim.env.GSF_REPOSITORY
local opt = vim.opt

opt.gdefault = true -- Always do global substitutes
-- Use ripgrep as the grep tool
opt.grepprg = "rg --vimgrep --smart-case"
opt.grepformat = "%f:%l:%c:%m,%f:%l:%m"
g.lazyvim_picker = "fzf-lua"
g.lazyvim_cmp = "auto"
opt.shell = "fish"
opt.history = 999 -- Keep 999 changes of undo history

if fn.has('wsl') == 1 then
  g.clipboard = {
    name = 'WslClipboard',
    copy = {
      ['+'] = 'clip.exe',
      ['*'] = 'clip.exe',
    },
    paste = {
      ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
      ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    },
  }
else
  g.clipboard = "wayclip"
end

-- enable copy to/from clipboard
if not vim.env.SSH_CONNECTION then
  if fn.has("unnamedplus") == 1 then
    opt.clipboard = { "unnamed", "unnamedplus" }
  else
    opt.clipboard = "unnamed"
  end
  -- Note, SSH connections will use OSC 52 copy.
end

--if fn.has("nvim-0.12") == 1 then
  --opt.diffopt = { "internal", "filler", "algorithm:histogram", "indent-heuristic", "inline:char" }else opt.diffopt = { "internal", "filler", "algorithm:histogram", "indent-heuristic", "linematch:60" }
--end
--
--if git_repo == "1" and not opt.diff:get() then
  --opt.signcolumn = "yes:1"
--else
  --opt.signcolumn = "no"
--end
--
--if git_repo == "1" and not opt.diff:get() then
  --opt.statuscolumn = "%l%s"
--end

-- Set the persistent undo directory on temporary private fast storage.
--local undo_dir = "/tmp/.nvim_undodir_" .. env.USER
--if fn.isdirectory(undo_dir) ~= 1 then
--  fn.mkdir(undo_dir, "", "0700")
--end
--opt.undodir = undo_dir
--opt.undofile = true -- Maintain undo history
