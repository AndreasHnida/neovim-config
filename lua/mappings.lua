require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
-- just vim
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "K", "5k", { desc = "Move up 5 Linies" })
map("n", "J", "5j", { desc = "Move down 5 Linies" })
map("n", "<leader>ww", '<CMD>:w<CR>', { desc = "Write file" })

map("n", "F", vim.lsp.buf.hover, { desc = "hover information" })
-- Telescope
map("n", "<leader><leader>", "<CMD>lua require('telescope.builtin').find_files()<CR>", { desc = "Telescope find files" })
-- Hop
map("n", "<leader>fj", "<CMD>lua require('hop').hint_words()<CR>", { desc = "Hop Hint Words" })

-- Confom
map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true, timeout_ms = 2500 }
end, { desc = "format files" })

-- Oil
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Harpoon
map("n", "Ä", "<CMD>lua require('harpoon.mark').add_file()<CR>", { desc = "Harpoon mark file" })
map("n", "ä", "<CMD>lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "Harpoon quick menu" })
-- map("n", "ä", "<CMD>Telescope harpoon marks<CR>", { desc = "Harpoon quick menu" })
map("n", "<M-ä>", "<CMD>lua require('harpoon.term').gotoTerminal(1)<CR>", { desc = "Harpoon terminal 1" })
map("t", "<C-c>", "<CMD>:bd!<CR>")
map("t", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })
map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto next" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w  <cr>")
