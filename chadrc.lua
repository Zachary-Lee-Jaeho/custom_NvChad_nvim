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

require "custom.functions"

return M
