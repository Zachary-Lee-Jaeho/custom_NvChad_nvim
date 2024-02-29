local plugins = {
  {
  "neovim/nvim-lspconfig",
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
},
  {
       "williamboman/mason.nvim",
   opts = {
      ensure_installed = {
        "lua-language-server",
        "clang-format",
        "clangd",
      },
    },
  },

{
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "json",
        -- "vue", "svelte",

        -- Coding
        "c",
        "cpp",
        "cuda",
        "cmake",
        "python",

        "gitignore",
        "llvm",
      },
    },
  },

}

return plugins
