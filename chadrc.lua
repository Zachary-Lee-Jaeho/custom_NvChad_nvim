-- @type ChadrcConfig
local M = {}

M.ui = { theme = "jellybeans" }
M.plugins = "custom.plugins"

local keymap = vim.keymap
local opt = vim.opt

-- {{{ disable mouse in vim
keymap.set("", "<up>", "<nop>", { noremap = true })
keymap.set("", "<down>", "<nop>", { noremap = true })
keymap.set("i", "<up>", "<nop>", { noremap = true })
keymap.set("i", "<down>", "<nop>", { noremap = true })

opt.mouse = ""
-- }}}

vim.wo.wrap = false

function ToggleWrap()
  if vim.wo.wrap then
    vim.wo.wrap = false
    print "Wrap disabled"
  else
    vim.wo.wrap = true
    print "Wrap enabled"
  end
end

vim.api.nvim_set_keymap("n", "<Leader>w", ":lua ToggleWrap()<CR>", { noremap = true, silent = true })

return M
