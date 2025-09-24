require("nvchad.configs.lspconfig").defaults()

local nvlsp = require "nvchad.configs.lspconfig"

-- Config link: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
local servers = {
  cssls = {},
  clangd = {},
  bashls = {},
  html = {},
  pyright = {},
  ruby_lsp = {},
  ts_ls = {},
  yamlls = {},
}

for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable(name)
end

-- LSP visuals
-- by default lsp config sets K in normal mode to hover with no border
-- https://github.com/neovim/nvim-lspconfig?tab=readme-ov-file#configuration
-- manually overriding the mapping passing in the border style
vim.keymap.set({ "n" }, "K", function()
  vim.lsp.buf.hover { border = "rounded" }
end, { desc = "LSP show details", silent = true })

-- sets border for diagnostics and opens them on jump in a floating window
vim.diagnostic.config {
  jump = {
    float = true,
  },
  float = {
    border = "rounded",
  },
}
