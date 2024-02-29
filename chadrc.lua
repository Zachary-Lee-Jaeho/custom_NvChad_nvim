---@type ChadrcConfig
local M = {}

M.ui = { theme = 'jellybeans' }
M.plugins = "custom.plugins"

-- {{{ disable mouse in vim
vim.keymap.set("", "<up>", "<nop>", { noremap = true })
vim.keymap.set("", "<down>", "<nop>", { noremap = true })
vim.keymap.set("i", "<up>", "<nop>", { noremap = true })
vim.keymap.set("i", "<down>", "<nop>", { noremap = true })

vim.opt.mouse = ""
-- }}}

return M
