require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- n -> normal mode , i -> insert mode , v -> visual mode

-- Add to WhichKey
map("n", "<leader>ft", "<cmd>Telescope treesitter<CR>", { desc = "Telescope find symbols(treesitter)" })

