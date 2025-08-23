require "nvchad.mappings"

local map = vim.keymap.set

-- General mappings
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- File explorer mappings
-- map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })

-- Telescope mappings
map("n", "<leader>ft", "<cmd>Telescope treesitter<CR>", { desc = "Telescope find symbols(treesitter)" })

-- Tmux Navigator mappings
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Navigate left (vim/tmux)" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Navigate down (vim/tmux)" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Navigate up (vim/tmux)" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "Navigate right (vim/tmux)" })
map("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<CR>", { desc = "Navigate to previous (vim/tmux)" })

-- Uncomment if you want Ctrl+S to save in all modes
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", { desc = "Save file" })

