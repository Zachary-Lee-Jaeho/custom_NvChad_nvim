local plugins = {
  {
    "p00f/clangd_extensions.nvim",
    config = function()
      require "custom.config.clangd_extensions"
    end,
  },
  {
    "stevearc/conform.nvim",
    config = function()
      require "custom.configs.conform"
    end,
    lazy = false,
  },
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
        "stylua",
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
