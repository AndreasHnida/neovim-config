require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true, timeout_ms = 2500 }
end, { desc = "format files" })

map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
