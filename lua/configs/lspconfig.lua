require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

-- Config link: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
local servers = {
  "ansiblels",
  "cssls",
  "clangd",
  "bashls",
  "html",
  "pyright",
  "ruby_lsp",
  "ts_ls",
  "yamlls"
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
--   init_options = {
--     preferences = {
--       -- importModuleSpecifier = "non-relative",
--       importModuleSpecifierPreference = "shortest",
--       includeCompletionsForModuleExports = true,
--       includeCompletionsForImportStatements = true,
--     },
--   },
-- }

vim.lsp.enable(servers)
-- read :h vim.lsp.config for changing options of lsp servers

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
