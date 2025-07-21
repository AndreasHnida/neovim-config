require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- List of servers to configure
local servers = { "ts_ls", "volar" }

-- TypeScript/JavaScript configuration
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
}

-- Vue configuration (Vue 3 with Volar)
lspconfig.volar.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.document_formatting = false
    client.server_capabilities.document_range_formatting = false
    client.server_capabilities.documentFormattingProvider = false
  end,
  capabilities = capabilities,
  filetypes = { "vue" },
}

lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}-- read :h vim.lsp.config for changing options of lsp servers 
