local null_ls = require("null-ls")

local function on_attach(client, bufnr)
  if client.server_capabilities.documentFormattingProvider then
    -- 버퍼 저장 시 자동 포맷팅을 위한 autocommand를 설정합니다.
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("LspFormatting", { clear = true }),
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr, async = false })
      end
    })
  end
end

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.clang_format.with({
      filetypes = { "cpp", "c", "cu", "cuh", "hpp", "h"},
      extra_args = { "-style={BasedOnStyle: WebKit, AlignTrailingComments: true, IndentWidth: 2, TabWidth: 2, UseTab: Always}" },
    }),
  },
  on_attach = on_attach,
})
