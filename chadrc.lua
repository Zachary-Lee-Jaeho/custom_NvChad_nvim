-- @type ChadrcConfig
local M = {}

-- {{{ Theme customization
M.ui = {
  theme = "jellybeans",
  changed_themes = {
    jellybeans = {
      base_30 = {
        grey = "#424242",
        grey_fg = "#515151",
      },
    },
  },
}
-- }}}

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

-- {{{ Define the kaymappings
keymap.set("n", "<C-e>", "3<C-e>", { noremap = true, silent = true })
keymap.set("n", "<C-y>", "3<C-y>", { noremap = true, silent = true })
-- }}}

M.ui = {
  nvdash = {
    load_on_startup = true,
  },
}

require "custom.functions"

return M
