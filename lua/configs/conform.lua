local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    go = { "goimports", "gofumpt" },
    html = { "prettier" },
    markdown = { "prettier" },
    php = { "phpstan" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 50000,
    lsp_fallback = true,
  },
}
require("conform").setup(options)
