require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    vue = { "prettier" },
  },
  formatters = {
    prettier = {
      command = "C:/Users/mail/AppData/Local/nvim-data/mason/bin/prettier.CMD",
      args = { "--stdin-filepath", "$FILENAME" },
      stdin = true,
    },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
})
